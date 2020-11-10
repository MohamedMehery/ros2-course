import rclpy
from rclpy.node import Node 
import sys
import cv2 
import numpy as np

def read_gate_images():
    try :
      gate = cv.imread("~/dev_ws/src/gateclnt/gate.jpg")# , cv2.IMREAD_GRAYSCALE)
      gate = cv2.resize(gate, (480, 640))

    except Exception as e:
      pass

def read_NONgate_images():
    try :
      notgate = cv.imread("~/dev_ws/src/gateclnt/notgate.jpg")# , cv2.IMREAD_GRAYSCALE)
      notgate = cv2.resize(notgate, (480, 640))
    except Exception as e:
      pass

#read_gate_images()
#read_NONgate_images()

gate = []



def gatedetection():
    img = gate #change the pic type, gate or notgate
    img = cv2.resize(img, (480, 640))
    #img = cv2.resize(img , None , fx = 0.4 , fy = 0.4)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(img,(7,7),0)

    blur = SimplestCB(blur,0.1)

    #masking
    hsv = cv2.cvtColor(blur, cv2.COLOR_BGR2HSV)

    lower_bound_1 = np.array([73,66,100])
    lower_bound_2 = np.array([165,120,20])
    upper_bound_1 = np.array([90,100,255])
    upper_bound_2 = np.array([180,255,255])

    mask = cv2.inRange(hsv, lower_bound_1, upper_bound_1)

    mask_white = cv2.inRange(hsv, lower_bound_2, upper_bound_2)
    mask = mask + mask_white
    res = cv2.bitwise_and(hsv, hsv, mask=mask)
    # print('image after masking')
    # cv2_imshow(res)

    # th3 = cv2.adaptiveThreshold(mask,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,11,2)

    contours,hierarchy = cv.findContours(mask, cv.RETR_TREE , cv.CHAIN_APPROX_SIMPLE)

    center_array = []
    mid_point = []
    radiuses_array = []

    for contour in contours:
        approx = cv.approxPolyDP( contour , 0.01 * cv.arcLength(contour , True ) , True)
        perimeter = cv.arcLength(contour,True)

        if(perimeter > 40 ):
            cv.drawContours(gray, [approx] , 0 , (0,0,0) , 1)
            (x,y),radius = cv.minEnclosingCircle(approx)
            center = (int(x),int(y))
            radius = int(radius)
            center_array.append(center)
            radiuses_array.append(radius)
            # if radius >= 1:
            cv.circle(gray,center,radius,(255,255,255),2)
            #print(center)


    #-np.sort(-radiuses_array)
    if len(center_array) != 0:
        mid_point = [ np.mean( center_array , axis = 0) ]
        distance = np.max(center_array  , axis = 0) - np.min(center_array  , axis = 0) 
        radius = int(distance[0]/2)

        # print(mid_point)
        # print(center_array)
        # print(distance)
        # print(len(contours))

        start = (int(mid_point[0][0]) - int(distance[0]/2), int(mid_point[0][1]) - int(distance[0]/4))
        end =  (int(mid_point[0][0] )+ int(distance[0]/2) , int(mid_point[0][1] )+ int(distance[0]/4))

        gate_center = [mid_point[0][0] , mid_point[0][1]]
        
        # print(start)
        # print(end)
        blur = cv2.rectangle( img , start , end , (255 , 255 , 255 ) , 3) 
        cv.putText(blur ,"Gate" , ( int(mid_point[0][0]) , int(mid_point[0][1]) ) ,cv.FONT_HERSHEY_COMPLEX , 1 , (250,250,250))

        cv2_imshow(img)

        cv2.waitKey(0)
        cv2.destroyAllWindows()
    else : print('NO GATE!!')

#Notice that box coordinates start from 0
def find_centerbox():
    x_boxsize = int(680/3)
    y_boxsize = int(480/3)
    #make notice that the coordinates start from 0 not 1
    for i in range(3):
        if gate_center[0] < x_boxsize*i:
            x_cord = i

    for i in range(3):
        if gate_center[1] < y_boxsize*i:
            y_cord = i


class MinimalClientAsync(Node):

    def __init__(self):
        super().__init__('minimal_client_async')
        self.cli = self.create_client(gatedetect, 'gatedetect')
        while not self.cli.wait_for_service(timeout_sec=1.0):
            self.get_logger().info('service not available, waiting again...')
        self.req = getdetect.Request()

    def send_request(self):
        read_gate_images() #We can change this line into read_Nongate_image()
        find_centerbox()    #this function find the coordinates of gate center
        req.x_coor = x_cord
        req.y_coor = y_cord
        
        self.future = self.cli.call_async(self.req)


def main(args=None):
    rclpy.init(args=args)

    minimal_client = MinimalClientAsync()
    minimal_client.send_request()

    while rclpy.ok():
        rclpy.spin_once(minimal_client)
        if minimal_client.future.done():
            try:
                response = minimal_client.future.result()
            except Exception as e:
                minimal_client.get_logger().info(
                    'Service call failed %r' % (e,))
            else:
                minimal_client.get_logger().info(
                    'Result of gate guid: %s %s' %
                    (minimal_client.req.x_coor, minimal_client.req.y_coor, response.x_instruct , response.y_instruct))
            break

    minimal_client.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()

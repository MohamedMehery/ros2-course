import rclpy
from rclpy.node import Node 
import sys
import cv2 


def read_gate_images(DATADIR = '/content/drive/My Drive/GATEDETECTION/IP_GATE'):
    try :
      gate = cv.imread("~/dev_ws/src/gateclnt/gate.jpg"))# , cv2.IMREAD_GRAYSCALE)
      gate = cv.resize(gate, (0.4, 0.4))
    except Exception as e:
      pass

def read_NONgate_images(DATADIR = '/content/drive/My Drive/GATEDETECTION/IP_NOGATE'):
    try :
      notgate = cv.imread("~/dev_ws/src/gateclnt/notgate.jpg"))# , cv2.IMREAD_GRAYSCALE)
      notgate = cv.resize(gate, (0.4, 0.4))
    except Exception as e:
      pass

read_gate_images()
read_NONgate_images()



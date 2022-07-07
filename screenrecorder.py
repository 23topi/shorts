import cv2
import keyboard
import numpy as np
import pyautogui
import time

# print(cv2.__version__)

screen = (1920,1080)
fourcc = cv2.VideoWriter_fourcc(*"MP4V")
output = cv2.VideoWriter("output.mp4", fourcc, 30, screen)


while True:
        if keyboard.is_pressed("a"):
            print("Die Aufzeichnung wird gestoppt")
            break
        img = pyautogui.screenshot()
        frame = np.array(img)
        frame = cv2.cvtColor(frame,cv2.COLOR_BGR2RGB)
        output.write(frame)
output.release()

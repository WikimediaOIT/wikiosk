#!/usr/bin/python

"""
Move mouse to edge of screen
"""

# osx libraries for mouse control and display sizes

# mouse control
from Quartz.CoreGraphics import CGEventCreateMouseEvent
from Quartz.CoreGraphics import kCGMouseButtonLeft
from Quartz.CoreGraphics import CGEventPost
from Quartz.CoreGraphics import kCGEventMouseMoved
from Quartz.CoreGraphics import kCGHIDEventTap

# display size
from Quartz import CGDisplayBounds
from Quartz import CGMainDisplayID

def movemouse(x, y):
        theEvent = CGEventCreateMouseEvent(None, kCGEventMouseMoved, (x,y), kCGMouseButtonLeft)
        CGEventPost(kCGHIDEventTap, theEvent)

mainMonitor = CGDisplayBounds(CGMainDisplayID())
x=mainMonitor.size.width
y=mainMonitor.size.height

# Move mouse (must be an onscreen pixel thus, -1s)
movemouse(x-2,y-10)





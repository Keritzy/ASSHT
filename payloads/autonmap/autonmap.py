#!/usr/bin/python
import sys
import time
import os
from socket import *

if __name__ == '__main__':
    target = sys.argv[1]
    targetIP = gethostbyname(target)
    print "Starting scan on host", targetIP

    for i in range(1, 4000):
        s = socket(AF_INET, SOCK_STREAM)

        result = s.connect_ex((targetIP, i))
        if(result == 0) :
            print "Port ~ %d is Open" % (i,)
            time.sleep(0.2)
            s.close()

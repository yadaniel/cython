#!/usr/bin/python
# cython: language_level=3

import sys

def Main():
    cnt = 0
    for i in range(10000000):
        cnt += 2
    print("res = %d" % cnt)

if __name__ == "__main__":
    print("in main")
    Main()



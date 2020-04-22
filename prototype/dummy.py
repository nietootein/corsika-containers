import numpy as np
import argparse

parser = argparse.ArgumentParser(description='Square a number.')
parser.add_argument('number', metavar='N', type=float,
                   help='a number')
args = parser.parse_args()
print(np.power(args.number,2))

#!/bin/bash
mpic++ -openmp proj7.cpp -o proj7 -lm 
mpirun -np 4 ./proj7


#!/bin/bash

mpic++ -openmp proj7.cpp -o proj7 -lm
for n in 1 2 4 8
do
    mpiexec -np $n ./proj7 
done
proj7: proj7.cpp
	mpic++ -openmp proj7.cpp -o proj7 -lm 

clean:
	rm -f proj7

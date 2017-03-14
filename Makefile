CC = gcc
OPENMP = -fopenmp
CFLAGS = -Wall -O3
LIBS =

all: helloworld


helloworld.o: helloworld.c
	$(CC) -c $(CFLAGS) $(OPENMP) helloworld.c


helloworld: helloworld.o
	$(CC) -o helloworld $(OPENMP) helloworld.o


clean:
	rm -f *.o $(TARGETS) *.stdout *.txt

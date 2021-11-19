SIZE 	= 100
FAILS	= 0

all: 
	mpicc -std=c11 -o Bitonic.out main.c -lm 

run:
	mpiexec ./Bitonic.out $(SIZE) $(FAILS) $(SIZE)

build_read:
	mpicc -o Read.out read_files.c -lm 

read:
	mpiexec ./Read.out $(SIZE)
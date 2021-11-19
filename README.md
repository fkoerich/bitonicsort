## Instalação MPI

### Verificar as versões das Dependências
`$m4 --version`

`$autoconf --version`

`$automake --version`

`$libtoolize --version`

### Gerar configurações para Instalação
`./autogen.pl`
	
### Opções de configurações
`./configure --prefix=/where/to/install`

### Instalação
`sudo make all install`



## Compilar Bitonic
`mpicc -std=c11 -o Bitonic.out main.c -lm`
	
OR 

`make all`
	
### Compilar sem Warning
`mpicc -std=c11 -w -o Bitonic.out main.c -lm `


### Rodar Bitonic
`make run SIZE=<number_of_elements> FAILS=<fails>`

OR 

`mpiexec ./Bitonic.out <number_of_elements> <fails> <number_of_elements>`


## Compilar Read File

`make build_read`

OR

`mpicc -o Read.out read_files.c -lm `

### Executar Read File

`make read`

OR

`mpiexec ./Read.out <number_of_elements>`
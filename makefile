
proyecto.out: funcion_principal.o modulo_cliente.o modulo_gerente.o modulo_repartidor.o
	gcc -o proyecto.out funcion_principal.o modulo_cliente.o modulo_gerente.o modulo_repartidor.o -lnsl -lm -lz -lmysqlclient

funcion_principal.o: funcion_principal.c
	gcc -c funcion_principal.c

modulo_cliente.o: modulo_cliente.c 
	gcc -c modulo_cliente.c

modulo_gerente.o: modulo_gerente.c 
	gcc -c modulo_gerente.c

modulo_repartidor.o: modulo_repartidor.c 
	gcc -c modulo_repartidor.c

clean:
	rm *.o


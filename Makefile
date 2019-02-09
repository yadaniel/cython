PY2LIB = /usr/lib/arm-linux-gnueabihf
PY3LIB = /usr/lib/arm-linux-gnueabihf

.PHONY: all p2 p3 clean

all: p2 p3
	$(shell /bin/bash -c "time ./main.py")
	$(shell /bin/bash -c "time ./main2.7")
	$(shell /bin/bash -c "time ./main3.5")
	echo done

p2:
	cython --embed main.py
	gcc -I /usr/include/python2.7 -L$(PY2LIB) -lpython2.7 main.c -o main2.7

p3:
	cython --embed main.py
	gcc -I /usr/include/python3.5 -L$(PY3LIB) -lpython3.5m main.c -o main3.5

clean:
	rm -f main2.7 main3.5 main.o main.c



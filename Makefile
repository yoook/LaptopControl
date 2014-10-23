all: LaptopControl


#GP_LIBS   = `pkg-config --libs   libgphoto2`
#GP_CFLAGS = `pkg-config --cflags libgphoto2`
#CFLAGS    =  -Wall $(GP_CFLAGS)
#LFLAGS    = -Wall $(GP_LIBS)
CFLAGS = -Wall
LFLAGS = -Wall


LaptopControl: main.o
	gcc main.o $(LFLAGS) -o LaptopControl
main.o: main.c
	gcc -c main.c $(CFLAGS) -o main.o


tmp.o: tmp.c helper.h
	gcc -c tmp.c $(CFLAGS) -o tmp.o
tmp: tmp.o helper.o
	gcc tmp.o helper.o $(LFLAGS) -o tmp


test.o: test.c helper.h
	gcc -c test.c $(CFLAGS) -o test.o
test: test.o helper.o
	gcc test.o helper.o $(CFLAGS) -o lcttest






clean:
	rm -f *.o LaptopControll

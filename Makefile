all: a.exe

a.exe: a.o a.v a.ico
	v -os windows -cflags a.o a.v
	
a.o: a.rc a.ico
	x86_64-w64-mingw32-windres a.rc a.o

clean:
	rm -rf a.o a.exe

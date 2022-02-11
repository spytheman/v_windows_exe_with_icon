all: myexe.exe

myexe.exe: resources.o main.v icon.ico
	v -os windows -cflags resources.o -o myexe.exe main.v
	
resources.o: resources.rc icon.ico
	x86_64-w64-mingw32-windres resources.rc resources.o

clean:
	rm -rf resources.o myexe.exe

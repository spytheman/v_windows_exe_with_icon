all: myexe.exe

myexe.exe: resources.o main.v icon.ico
	v -subsystem windows -os windows -cflags $(CURDIR)/resources.o -o myexe.exe -prod -gc none -no-builtin main.v ## compiling ...
	ls -la myexe.exe ## before stripping
	strip myexe.exe
	ls -la myexe.exe ## after stripping
	
resources.o: resources.rc icon.ico
	x86_64-w64-mingw32-windres resources.rc resources.o ## compiling the icon + .rc file

clean:
	rm -rf resources.o myexe.exe

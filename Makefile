all: build/oculus-rest

clean:
	rm -f build/*

build/oculus-rest.o: src/main.mm
	clang++ -Ilibmicrohttpd/include \
		-ILibOVR/include \
		-DDEBUG=1 -DOVR_BUILD_DEBUG \
		-m64 \
		-arch x86_64 \
		-g -c \
		-O0 \
		-fno-rtti \
		-o build/oculus-rest.o \
		src/main.mm

build/oculus-rest: build/oculus-rest.o
	clang++ -framework CoreFoundation \
		-framework IOKit \
		-framework ApplicationServices \
		-framework Cocoa \
		-framework CoreGraphics \
		-framework OpenGL \
		-Llibmicrohttpd/bin \
		-lmicrohttpd \
		-fobjc-link-runtime \
		-lobjc \
		-lpthread \
		-LLibOVR/Lib/MacOS/Release \
		-lovr \
		-arch x86_64 \
		-o build/oculus-rest \
		build/oculus-rest.o

TARGET = Planet_Hively
EXTRA_TARGETS = EBOOT.PBP
CFLAGS = -Wall -O2 `psp-sdl-config --cflags` -D__EMBED_TUNES__ \
-DDEFAULT_WIDTH=480 -DDEFAULT_HEIGHT=272 -DPSP -D__FIXED_RES__ -D__NO_ARGS__ \
-D__BROKEN_SDL_TIMER__ -D__NO_MOUSE__
LIBS = `psp-sdl-config --libs` -lSDLmain -lm -lpsppower

OBJS = main.o hvl_replay.o shapes.o render.o fonts.o text.o scrollbox.o

PSP_EBOOT_ICON = icon.png
PSP_EBOOT_PIC1 = bg.png
PSP_FW_VERSION = 371
BUILD_PRX = 1

PSPSDK := $(shell psp-config --pspsdk-path)

include $(PSPSDK)/lib/build.mak

export

cool_mzx/cool_mzx.a:
	cd cool_mzx && make

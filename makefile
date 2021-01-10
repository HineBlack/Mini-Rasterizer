CC			= g++
SRC_DIR		= src
DST_DIR		= build

TARGET		:= $(DST_DIR)\Mini-Rasterizer.exe

SRCS		:= $(wildcard */*.cxx)
OBJS_NAME	:= $(notdir $(patsubst %.cxx,%.o,$(SRCS)))
OBJS		:= $(OBJS_NAME:%=$(SRC_DIR)\\%)


.PHONY: all clean

$(TARGET): $(OBJS)
	$(CC) -Wall -o $(TARGET) $(OBJS)

$(OBJS): %.o: %.cxx
	$(CC) -Wall -c $< -o $@

all: $(TARGET)

clean:
	@del $(TARGET)
	@del $(OBJS)

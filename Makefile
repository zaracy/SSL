# TP0 - Makefile
# Ejemplo según la guia del profesor José María Sola

CC = gcc
CFLAGS = -std=c23 -Wall -Wextra -pedantic

all: build run

build:
	$(CC) $(CFLAGS) hello.c -o hello.exe

run: build
	.\hello.exe

clean:
	del hello.exe output.txt 2>nul || true
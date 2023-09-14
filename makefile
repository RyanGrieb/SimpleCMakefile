# The C compiler we use.
CC = gcc
# -Wall : Enable all warnings
CFLAGS = -Wall

# List of all C files we want to compile
SRC = main.c file1.c file2.c a_folder/file_in_folder.c
# OBJ is a list of object files derived from SRC by replacing .c with .o
OBJ = $(SRC:.c=.o)
# Assign the value 'main' to the EXECUTABLE variable
EXECUTABLE = main

# When we type 'make all' run $(EXECUTABLE) below
all: $(EXECUTABLE)


# gcc -Wall main.o utils/list_utils.o commands/ls_command.o commands/pwd_command.o commands/echo_command.o -o main
# Compiles the program, and references %.o: %.c when a .o file is needed. (done by the pattern rule below)
# $@ references $(EXECUTABLE)
$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@

# gcc -Wall -c main.c -o main.o, ect.. when needed.
# This is a pattern rule for compiling individual .c files into .o object files.
# Whenever a .o file is needed (e.g. from $(EXECUTABLE): $(OBJ) above), it will compile the corresponding .c file into an object file.
# $< references %.c
# $@ references %.0
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# When we type 'make clean' remove all .o files, and the executable.
clean:
	rm -f $(OBJ) $(EXECUTABLE)

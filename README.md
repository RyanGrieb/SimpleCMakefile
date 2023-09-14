# Simple C Makefile

This repository contains a simple Makefile for compiling C programs. It's designed to make the compilation process easy and efficient for small to medium-sized C projects.

## Getting Started

To use this Makefile for your C project, follow these steps:

1. Clone the Repository: Start by cloning this repository to your local machine.

   git clone <repository_url>

2. Navigate to the Project Directory: Enter the project directory.

   cd <project_directory>

3. Edit the Makefile (Optional): Open the Makefile in a text editor of your choice. You can customize it to suit your project's needs by modifying variables like SRC, OBJ, and EXECUTABLE, or by adding specific compiler flags to CFLAGS.

4. Compile Your Program: To compile your C program, simply run the following command:

   make

   This command will compile your program according to the rules defined in the Makefile. By default, it will create an executable named 'main'.

5. Run Your Program: After successfully compiling your program, you can run it by entering:

   ./main

   Replace 'main' with the name of your executable if you've customized it in the Makefile.

## Cleaning Up

To remove the compiled object files and the executable, you can use the following command:

make clean

This will clean up your project directory by deleting all '.o' files and the executable.

## Customization

Feel free to customize the Makefile to meet your project's requirements. You can add additional source files to the SRC variable, adjust compiler flags in CFLAGS, or modify the EXECUTABLE variable to change the name of the generated executable.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

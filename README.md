# Assembly Examples

This repository provides a collection of assembly code examples specifically designed for the x86-64 architecture using NASM (Netwide Assembler) and Linux. Additionally, it includes a Docker environment that simplifies the process of building and running these examples.

## Examples
### NASM:
- **hello_world:** Prints the classic "Hello, World!" message to the command line.
- **read_write:** Reads a number from the command line and prints it back.

Each example follows a similar structure to facilitate building and running within a Docker container:

1. `main.S`: This file (usually the *main.S*) contains the assembly code for the example.
2. `Makefile`: The Makefile provides instructions for building the example. It specifies the necessary compiler and flags to assemble the code and generate the executable.
3. `run.sh`: This script is used to build and run the example inside the Docker container. It should be executed within the container environment.

### MASM:
- **segmentation:** Classic "hello world" using tiny and simple segmentation models.
- **basics:** Basic programming concepts - variables, conditions, cycles, functions and mov assembly opetator.

## Contributing New Examples

We welcome contributions of new assembly code examples to expand the collection. If you have additional examples you'd like to share, please create a new directory with the example files and submit a pull request. Make sure the example can be built and run within the provided Docker environment. Thank you for contributing!

## Run Example

### NASM: 

1. Build the Docker image and run the Docker container using the `run_container.sh` script.
3. Inside the container, navigate to the desired example folder.
4. Execute the `run.sh` script to build and run the example.
```
cd docker
chmod +x ./run_container.sh
./run_container.sh
```
```
cd hello_world
chmod +x ./run.sh
./run.sh
```
### MASM:

Read ***[masm/_setup_msdos/README.md](https://github.com/ln-sergey/assembler_examples/blob/main/masm/_setup_msdos/README.md)***

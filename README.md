# Assembly Language Programming Assignments

This repository contains my assembly language programming assignments completed during my **Microprocessor and Assembly Language** course at university. All programs are written in 8086 assembly language using the MASM (Microsoft Macro Assembler) syntax and DOS interrupts.

## 📚 Course Overview

These assignments cover fundamental concepts of assembly language programming, including:

- Basic input/output operations
- Character manipulation
- Conditional branching and loops
- Stack operations
- Number system conversions
- String processing

## 🛠️ Development Environment

- **Processor**: Intel 8086/8088
- **Assembler**: MASM (Microsoft Macro Assembler)
- **OS**: DOS (MS-DOS)
- **Memory Model**: Small (.model small)

## 📋 Assignment List

### Basic I/O Operations

- **02.asm** - Input and display three characters
- **mycode.asm** - Convert uppercase to lowercase character

### Number System Conversions

- **03.asm** - Convert hexadecimal to decimal

### Comparison and Conditional Logic

- **05.asm** - Find the larger of two input characters
- **10.asm** - Determine if a number (1-4) is odd or even

### Loop Operations

- **15.asm** - Read characters until space is encountered
- **19.asm** - String reversal using stack operations

### String and Pattern Operations

- **04.asm** - Display a string pattern 10 times using loop
- **13.asm** - Print 80 asterisks (\*) in a line using loop

### Mathematical Operations

- **06.asm** - Find absolute value of a character (remove negative sign)
- **07.asm** - Find the smaller of two input characters
- **09.asm** - Classify input character as positive, negative, or zero

### Character Validation and Processing

- **11.asm** - Check if input character is uppercase letter (A-Z)
- **12.asm** - Check if input character is 'Y' or 'y' and echo it
- **14.asm** - Count characters in input until Enter key is pressed
- **16.asm** - Sort two input characters in ascending order

### Advanced Display Programs

- **17.asm** - Display ASCII characters from 128-255 in rows of 10
- **18.asm** - Interactive hex-to-decimal converter with error handling

## 🔧 How to Run

### Prerequisites

- DOSBox or similar DOS emulator
- MASM assembler
- LINK linker

### Compilation Steps

```bash
# Assemble the source code
MASM filename.asm;

# Link the object file
LINK filename.obj;

# Run the executable
filename.exe
```

### Alternative using TASM

```bash
# Assemble and link
TASM filename.asm
TLINK filename.obj
filename.exe
```

## 📖 Key Concepts Demonstrated

### 1. **DOS Interrupts Used**

- `INT 21h` - DOS function calls
  - `AH=01h` - Character input
  - `AH=02h` - Character output
  - `AH=09h` - String output
  - `AH=4Ch` - Program termination

### 2. **Memory Management**

- `.model small` - Small memory model
- `.stack 100h` - Stack segment allocation
- `.data` - Data segment for variables
- `.code` - Code segment for instructions

### 3. **Programming Constructs**

- **Conditional Jumps**: `JE`, `JLE`, `CMP`
- **Loops**: `LOOP`, conditional loops with jumps
- **Stack Operations**: `PUSH`, `POP`
- **String Operations**: Character manipulation and conversion

### 4. **Character Manipulation**

- ASCII value operations
- Case conversion (uppercase ↔ lowercase)
- Hexadecimal to decimal conversion

## 🎯 Learning Outcomes

Through these assignments, I gained proficiency in:

1. **Low-level Programming**: Understanding how high-level constructs translate to assembly
2. **Memory Management**: Direct memory access and efficient memory usage
3. **Processor Architecture**: Intel 8086 architecture and instruction set
4. **Interrupt Handling**: Using DOS interrupts for system calls
5. **Debugging Skills**: Tracing program execution at the instruction level
6. **Algorithm Implementation**: Converting algorithms to assembly language

## 📝 Program Descriptions

### Character I/O Programs

- **Input/Output Operations**: Programs demonstrating basic character input and output using DOS interrupts
- **Character Conversion**: Converting between uppercase and lowercase characters using ASCII manipulation

### Comparison Programs

- **Character Comparison**: Finding the lexicographically larger character between two inputs
- **Odd/Even Detection**: Determining if a single-digit number is odd or even

### Advanced String Operations

- **String Reversal**: Using stack operations to reverse input strings
- **Character Processing**: Processing characters until specific conditions are met

## 🏆 Technical Skills Acquired

- Assembly language syntax and semantics
- 8086 microprocessor architecture
- Memory segmentation concepts
- Interrupt-driven programming
- Stack-based operations
- Bit manipulation techniques
- Performance optimization at instruction level

## 📞 Contact

If you have any questions about these assignments or assembly language programming, feel free to reach out!

---

_These assignments were completed as part of my university coursework in Microprocessor and Assembly Language Programming._

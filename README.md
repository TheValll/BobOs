# 🌐 BobOs

**BobOs** is a project for an operating system based on **Assembly** and **C**, developed as part of my final master’s project in embedded systems.

## 🚀 How to Run the Bootloader

### Prerequisites

Make sure you have the following installed on your system:

- `make`
- `nasm`
- `qemu`

### 🛠️ Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/TheValll/BobOs
   ```
2. Navigate to the project directory:
   ```bash
   cd BobOs
   ```
3. Build the project:
   ```bash
   make
   ```
4. Run the bootloader with QEMU:
   ```bash
   qemu-system-i386 -drive format=raw,file=build/main.img
   ```

### 🎉 Enjoy exploring BobOs!

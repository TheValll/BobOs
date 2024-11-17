# 🌐 BobOs

**BobOs** is a project for an operating system based on **Assembly** and **C**, developed as part of my final master’s project in embedded systems.

## 🚀 How to Run the Bootloader

### Prerequisites

Make sure you have the following installed on your system:

- `make` [link](https://gnuwin32.sourceforge.net/packages/make.htm)
- `nasm` [link](https://www.nasm.us/pub/nasm/releasebuilds/?C=M;O=D)
- `qemu` [link](https://www.qemu.org/download/)
- `docker` [link](https://www.docker.com/products/docker-desktop/)
- !FOR LINUX USERS!

  ```bash
  apt-get update && \
    apt-get install -y \
    nasm \
    build-essential \
    dosfstools \
    mtools \
    make \
    gcc \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*
  ```

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

   !FOR WINDOWS AND MACOS USERS! BUILD and UP the dockerfile and docker-compose for build the main.img file

   ```bash
   docker-compose build
   docker-compose up
   ```

4. Run the bootloader with QEMU:
   ```bash
   qemu-system-i386 -drive format=raw,file=build/main.img
   ```

### 🎉 Enjoy exploring BobOs!

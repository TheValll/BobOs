ASM = nasm

SRC_DIR = src
BUILD_DIR = build

floppy_img: $(BUILD_DIR)/main.img
$(BUILD_DIR)/main.img: bootloader kernel
	dd if=/dev/zero of=$(BUILD_DIR)/main.img bs=512 count=2880
	mformat -i $(BUILD_DIR)/main.img -f 1440 -t 80 -h 2 -n 18 -v "BOBOS" ::
	mcopy -i $(BUILD_DIR)/main.img $(BUILD_DIR)/kernel.bin ::/kernel.bin

bootloader: $(BUILD_DIR)/bootloader.bin
$(BUILD_DIR)/bootloader.bin:
	$(ASM) $(SRC_DIR)/bootloader/boot.asm -f bin -o $(BUILD_DIR)/bootloader.bin

kernel: $(BUILD_DIR)/kernel.bin
$(BUILD_DIR)/kernel.bin:
	$(ASM) $(SRC_DIR)/kernel/main.asm -f bin -o $(BUILD_DIR)/kernel.bin

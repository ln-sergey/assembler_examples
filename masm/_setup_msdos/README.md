# How to install MS-DOS with MASM (with disks attched)

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Create new virtual machine named **'ms-dos'**, version=DOS
3. Open **'ms-dos'** --> **Settings** --> **Storage** --> **Storage Devices** --> **Controller Floppy** --> **Empty**
4. Select `../../assembler_examples/masm/_setup_msdos/boot_disks/Disk1.ima`
5. Run **'ms-dos'** vm
6. When MSDOS asks you to insert `Disk 2`/`Disk 3` repeat **3**, **4** steps with corresponding disks
7. Install `masm` using instructions from `../../assembler_examples/masm/_setup_msdos/masm_disks/README.md`
8. Run examples and create more of it
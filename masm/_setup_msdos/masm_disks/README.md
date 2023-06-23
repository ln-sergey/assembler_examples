# How to install MASM on MS-DOS (with disks attched)
1. Create `c:\masm` directory 
```powershell
    MKDIR MASM
```
2. Put 1st disk image (`masm_1_disk.ima`) to MSDOS (It shold be the only placed disk) 
3. Enter following to MSDOS (You can enter **~** sign using soft keyboard of VirtualBox or corresponding key on yours kb): 
```powershell
    A:\
    XCOPY /s DISK1~1 C:\MASM
```
4. Remove 1st disk image (masm_2_disk.ima) from MSDOS
5. Put 2nd disk image (masm_2_disk.ima) to MSDOS (It shold be the only placed disk)
6. Enter following to MSDOS:
```powershell
    A:\
    XCOPY /s DISK2~1 C:\MASM
```
7. Repeat 4, 5, 6 steps unlill you copied 5th disk to `C:\MASM`
8. Remove 5st disk image (masm_5_disk.ima) from MSDOS
9. Enter following to MSDOS:
```powershell
    C:\
    setup.exe
```
10. When the blue window opens, choose all as is(press `Enter`) except 
```
Choose the operating system you will use for 
running the Microsoft Macro Assembler.

        DOS/Windows & NT
      > MS-DOS/Microsoft Windows
        Microsoft Windows NT
```
> Here you should choose **MS-DOS/Microsoft Windows**

11. To check all works fine lets run hello world: 
    1. Create and open file in `C:\MASM611\BIN`

        ```powershell
            CD C:\MASM611\BIN
            EDIT /b program.asm
        ```
    2. In opened editor enter following 

    ```assembly
    .8086
    code SEGMENT para USE16 PUBLIC 'code'
        ASSUME CS:code, DS:code, SS:code, ES:code
        ORG 100h
    START:
        message db 'Hello, World!$'
        MOV ah, 9h
        MOV dx, offset message
        int 21h
        ret
    code ENDS
    END START
    ```
    3. Press Alt+F (Opt+F), S, Alt+F (Opt+F), X (Save and close)
    4. Enter following to MSDOS: 

    ```powershell
        ml.exe /AT program.asm
        program.com
    ```
    
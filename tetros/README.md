# TetrOS by Daniel Etzold

## 1. Links

- [Back to overview](../README.md)
- [Showcase video](https://youtu.be/Hl7M7f-Hh78)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetros/archive)
- [Source code](https://github.com/daniel-e/tetros)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 446 B
- **Extra size**: 66 B
- **Total size**: 512 B
- **Feature count**: 9
- **Bytes per feature**: 50 B

## 3. Controls

- <kbd>Up</kbd>: rotate counterclockwise
- <kbd>Left</kbd>: move left
- <kbd>Right</kbd>: move right
- <kbd>Any Key</kbd>: hard drop

## 4. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Game over detection**
4. **Gravity**
5. **Hard drop**: piece falls at maximum speed
6. **Horizontal movement**
7. **Line clearing**
8. **No bugs**
9. **Rotation**

## 5. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 3 ways:

### 5.1. QEMU

1. [Download QEMU](https://www.qemu.org/download)
2. Run the following command, replacing `/path/to/tetros.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tetros.img
    ```

### 5.2. DOSBox

1. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
2. Run the command for your operating system, replacing `/path/to/tetros.img`:
    - Windows:
        ```shell
        dosbox -c "BOOT /path/to/tetros.img"
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c "BOOT /path/to/tetros.img"
        ```

### 5.3. USB stick (Windows only)

For ASUS laptops, [follow this tutorial](https://youtu.be/ECmYtPBSMI8) first.

1. Get an empty USB stick and insert it
2. [Download Rufus](https://rufus.ie)
3. Open Rufus
4. Select USB stick
5. Select `tetros.img`
6. Click on START
7. Restart PC
8. Tap <kbd>Esc</kbd> until the boot menu appears
9. Select USB stick
10. Press <kbd>Enter</kbd>
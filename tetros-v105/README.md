# TetrOS v1.05 by Tomasz Grysztar

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetros-v105/archive)
- [Source code](https://board.flatassembler.net/topic.php?p=211564#211831)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 508 B
- **Extra size**: 4 B
- **Total size**: 512 B
- **Feature count**: 17
- **Bytes per feature**: 30 B

## 3. Controls

## 3.1. Game

- <kbd>Esc</kbd>: restart
- <kbd>F16</kbd>: pause (DOSBox only)
- <kbd>↑</kbd>: rotate counterclockwise
- <kbd>←</kbd>: move left
- <kbd>↓</kbd>: hard drop
- <kbd>→</kbd>: move right

### 3.2. Pause screen (DOSBox only)

- <kbd>Any Key</kbd>: unpause

## 4. Features

1. **All tetrominoes**
2. **Faster levels**: `speed = points / 100 % 4`
3. **Game over detection**
4. **Gravity**
5. **Hard drop**: 1 frame lock
6. **Height score multiplier**: `1 + height / 2`
7. **Horizontal movement**
8. **Line clearing**
9. **Line clear points**:
    - **Single**: `1 * multiplier`
    - **Double**: `3 * multiplier`
    - **Triple**: `7 * multiplier`
    - **Tetris**: `15 * multiplier`
10. **No bugs**: except when booted from USB
11. **Pause**: pause emulation (emulator only)
12. **Piece preview**: single piece
13. **Place points**: `1 * multiplier`
14. **Random background color**: restart if you can't see the walls
15. **Restart**
16. **Retry**
17. **Rotation**

## 5. Bugs (USB stick only)

1. Color doesn't work
2. The bottom row isn't visible

## 6. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 3 ways:

### 6.1. QEMU

1. [Download QEMU](https://qemu.org/download)
2. Run the following command, replacing `/path/to/tetros.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tetros.img
    ```

### 6.2. DOSBox

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

### 6.3. USB stick (Windows only)

For ASUS laptops, [follow this tutorial](https://youtu.be/ECmYtPBSMI8) first.

1. Get an empty USB stick and insert it
2. [Download Rufus](https://rufus.ie)
3. Open Rufus
4. Select USB stick
5. Set Boot selection to `Disk or ISO image`
6. Select `tetros.img`
7. <kbd>START</kbd>
8. Restart PC
9. Tap <kbd>Esc</kbd> until the boot menu appears
10. Select USB stick
11. Press <kbd>↵ Enter</kbd>
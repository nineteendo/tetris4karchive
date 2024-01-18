# Tetranglix by XlogicX

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetranglix/archive)
- [Source code](https://github.com/XlogicX/tetranglix)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 491 B
- **Extra size**: 21 B
- **Total size**: 512 B
- **Feature count**: 9
- **Bytes per feature**: 55 B

## 3. Controls

- <kbd>↑</kbd>: rotate clockwise
- <kbd>←</kbd>: move left
- <kbd>→</kbd>: move right

## 4. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Game over detection**
4. **Gravity**
5. **Horizontal movement**
6. **Line clearing**
7. **Line clear points**:
    - **Single**: 64
    - **Double**: 128
    - **Triple**: 192
    - **Tetris**: 256
8. **Rotation**
9. **Time points**: `1 * frame`

## 5. Bugs

1. The game can't keep up with keyboard input
2. Pressing <kbd>Esc</kbd> resets the score on QEMU

## 6. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 2 ways:

### 6.1. QEMU

1. [Download QEMU](https://qemu.org/download)
2. Run the following command, replacing `/path/to/tetranglix.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tetranglix.img
    ```

### 6.2. DOSBox

1. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
2. Run the command for your operating system, replacing `/path/to/tetranglix.img`:
    - Windows:
        ```shell
        dosbox -c "BOOT /path/to/tetranglix.img"
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c "BOOT /path/to/tetranglix.img"
        ```
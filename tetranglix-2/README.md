# Tetranglix by shikhin

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetranglix-2/archive)
- [Source code](https://github.com/shikhin/tetranglix)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 446 B
- **Extra size**: 66 B
- **Total size**: 512 B
- **Feature count**: 8
- **Bytes per feature**: 56 B

## 3. Controls

## 3.1. Game

- <kbd>F16</kbd>: pause (DOSBox only)
- <kbd>↑</kbd>: rotate clockwise
- <kbd>←</kbd>: move left
- <kbd>→</kbd>: move right

### 3.2. Pause screen (DOSBox only)

- <kbd>Any Key</kbd>: unpause

## 4. Features

1. **Game over detection**
2. **Gravity**
3. **Horizontal movement**
4. **Line clearing**
5. **Line clear points**:
    - **Single**: 64
    - **Double**: 128
    - **Triple**: 192
6. **Pause**: pause emulation
7. **Rotation**
8. **Time points**: `1 * frame`

## 5. Bugs

1. Not all tetromioes are drawn
2. The game can't keep up with keyboard input

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
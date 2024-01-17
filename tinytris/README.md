# Tinytris by Pellsson

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tinytris/archive)
- [Source code](https://github.com/pellsson/tinytris)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 251 B
- **Extra size**: 0 B
- **Total size**: 251 B
- **Feature count**: 6
- **Bytes per feature**: 42 B

## 3. Controls

- <kbd>J</kbd>: move left
- <kbd>K</kbd>: rotate counterclockwise
- <kbd>L</kbd>: move right

## 4. Features

1. **All tetrominoes**
2. **Game over detection**
3. **Gravity**
4. **Horizontal movement**
5. **Line clearing**
6. **Rotation**

## 5. Bugs

1. Speed is cpu dependent

## 6. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 2 ways:

### 6.1. QEMU

1. [Download QEMU](https://qemu.org/download)
2. Run the following command, replacing `/path/to/tinytris.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tinytris.img
    ```

### 6.2. DOSBox

1. Move `tinytris.com` to `~/dosgames`
2. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
3. [Setup AUTOEXEC](https://dosbox.com/wiki/AUTOEXEC)
4. Run the command for your operating system:
    - Windows:
        ```shell
        dosbox -c tinytris.com
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c tinytris.com
        ```
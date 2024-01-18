# Tetris 256B by Megasys

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris-256b/archive)
- [Source code](https://pouet.net/prod.php?which=6951)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 256 B
- **Extra size**: 0 B
- **Total size**: 256 B
- **Feature count**: 8
- **Bytes per feature**: 32 B

## 3. Controls

### 3.1. Game

- <kbd>Esc</kbd>: quit
- <kbd>F16</kbd>: pause
- <kbd>J</kbd>: move left
- <kbd>K</kbd>: rotate counterclockwise
- <kbd>L</kbd>: move right

### 3.2. Pause screen

- <kbd>Any Key</kbd>: unpause

## 4. Features

1. **Colored pieces**
2. **Gravity**
3. **Horizontal movement**
4. **Line clearing**
5. **No bugs**
6. **Pause**: pause emulation
7. **Quit**
8. **Rotation**

## 5. How to play

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
3. Move `tetris.com` to `~/dosgames`
4. [Setup AUTOEXEC](https://dosbox.com/wiki/AUTOEXEC)
5. Run the command for your operating system:
    - Windows:
        ```shell
        dosbox -c tetris
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c tetris
        ```
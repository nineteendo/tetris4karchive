# Tetris (unknown author)

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris/archive)
- [Source code](https://github.com/netspooky/hardcode/tree/master/00512/dos/tetris)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 510 B
- **Extra size**: 0 B
- **Total size**: 510 B
- **Feature count**: 11
- **Bytes per feature**: 46 B

## 3. Controls

## 3.1. Game

- <kbd>Esc</kbd>: quit
- <kbd>F16</kbd>: pause
- <kbd>↑</kbd>: rotate counterclockwise
- <kbd>←</kbd>: move left
- <kbd>↓</kbd>: hard drop
- <kbd>→</kbd>: move right

### 3.2. Pause screen

- <kbd>Any Key</kbd>: unpause

## 4. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Drop**: hard drop
4. **Game over detection**
5. **Gravity**
6. **Horizontal movement**
7. **Line clearing**
8. **No bugs**
9. **Pause**: pause emulation
10. **Quit**
11. **Rotation**

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
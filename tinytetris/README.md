# TinyTetris by Dwing

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tinytetris/archive)
- [Source code](https://pouet.net/prod.php?which=15669)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 471 B
- **Extra size**: 0 B
- **Total size**: 471 B
- **Feature count**: 13
- **Bytes per feature**: 36 B

## 3. Controls

- <kbd>Esc</kbd>: quit
- <kbd>Up</kbd>: rotate counterclockwise
- <kbd>Space</kbd>: soft drop
- <kbd>Left</kbd>: move left
- <kbd>Down</kbd>: hard drop
- <kbd>Right</kbd>: move right

## 4. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Game over detection**
4. **Game over screen**: game over text
5. **Gravity**
6. **Hard drop**
7. **Horizontal movement**
8. **Line clearing**
9. **Line clear points**:
    - **Single**: 100
    - **Double**: 300
    - **Triple**: 600
    - **Tetris**: 1000
10. **No bugs**
11. **Quit**
12. **Rotation**
13. **Soft drop**

## 5. How to play

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. Move `TinyTris.com` to `~/dosgames`
3. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
4. [Setup AUTOEXEC](https://www.dosbox.com/wiki/AUTOEXEC)
5. Run the command for your operating system:
    - Windows:
        ```shell
        dosbox -c TinyTris.com
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c TinyTris.com
        ```
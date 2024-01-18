# 1.32KB Tetris by Vzub Pnukem

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/1.32kb-tetris/archive)
- [Source code](https://github.com/netspooky/hardcode/tree/master/02048/dos/1.32kb%20tetris)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 1,4 KB
- **Extra size**: 0 B
- **Total size**: 1,4 KB
- **Feature count**: 17
- **Bytes per feature**: 80 B

## 3. Controls

## 3.1. Settings screen

- <kbd>Enter</kbd>: start game
- <kbd>↑</kbd>: increase speed
- <kbd>←</kbd>: counterclockwise rotation
- <kbd>↓</kbd>: decrease speed
- <kbd>→</kbd>: clockwise rotation

### 3.2. Game

- <kbd>Esc</kbd>: quit
- <kbd>↑</kbd>: rotate
- <kbd>←</kbd>: move left
- <kbd>↓</kbd>: soft drop
- <kbd>→</kbd>: move right

### 3.2. Game over screen

- <kbd>Y</kbd>: retry
- <kbd>N</kbd>: quit

## 4. Features

1. **All tetrominoes**
2. **Faster levels**: `speed = min(max(speed, score / 50), 9)`
3. **Game over detection**
4. **Game over screen**: game over text
5. **Gravity**
6. **Horizontal movement**
7. **Level selection**: start from speed 0 - 9
8. **Line clearing**
9. **Line clear points**:
    - **Single**: 1
    - **Double**: 3
    - **Triple**: 5
    - **Tetris**: 15
10. **Piece preview**: single piece
11. **Quit**
12. **Retry**
13. **Rotation**
14. **Rotation selection**: clockwise or counterclockwise rotation
15. **Soft drop**
16. **Title screen**

## 5. Bugs

1. Sometimes speed doesn't change

## 6. How to play

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
3. Move `Tetris.com` to `~/dosgames`
4. [Setup AUTOEXEC](https://dosbox.com/wiki/AUTOEXEC)
5. Run the command for your operating system:
    - Windows:
        ```shell
        dosbox -c Tetris
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c Tetris
        ```
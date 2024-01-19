# Small Tetris by Tore Bastiansen

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/small-tetris/archive)
- [Source code](https://playdosgames.com/online/smalltetris)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 2,0 KB
- **Extra size**: 0 B
- **Total size**: 2,0 KB
- **Feature count**: 22
- **Bytes per feature**: 93 B

## 3. Command line arguments

```none
usage: TETRIS [options]

options:
    -l N: starting level (1-17) [default: 1]
    -p:   show piece preview
```

## 4. Controls

- <kbd>F16</kbd>: pause

### 4.1. Game

- <kbd>Page Up</kbd>: skip level
- <kbd>P</kbd>: toggle piece preview
- <kbd>↑</kbd>: rotate counterclockwise
- <kbd>←</kbd>: move left
- <kbd>↓</kbd>: hard drop
- <kbd>→</kbd>: move right

### 4.2. Pause screen

- <kbd>Any Key</kbd>: unpause

### 4.3. Game over screen

- <kbd>Y</kbd>: retry
- <kbd>N</kbd>: quit

## 5. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Drop points**: `fall_height / 2 * level`
4. **Faster levels**: `speed = min(level, 17)`
5. **Game over detection**
6. **Game over screen**: game over text
7. **Gravity**
8. **Hard drop**
9. **High scores**: default 39996
10. **Horizontal movement**
11. **Level score multiplier**
12. **Level selection**: start from level 1 - 17
13. **Line clearing**
14. **No bugs**
15. **Pause**: pause emulation
16. **Piece preview**: single piece
17. **Piece preview selection**: piece preview or not
18. **Placement points**:
    - **Piece preview**: `1 * level`
    - **No piece preview**: `2 * level`
19. **Retry**
20. **Rotation**
21. **Skip level**
22. **Toggleable piece preview**

## 6. How to play

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
3. Move `TETRIS.COM` to `~/dosgames`
4. [Setup AUTOEXEC](https://dosbox.com/wiki/AUTOEXEC)
5. Run the command for your operating system, with optional [command line arguments](#3-command-line-arguments):
    - Windows:
        ```shell
        dosbox -c "TETRIS [options]"
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c "TETRIS [options]"
        ```
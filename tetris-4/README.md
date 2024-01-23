# Tetris by mniip

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play-macos-only)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris-4/archive)
- [Source code](https://codegolf.stackexchange.com/a/11650/120787)

## 2. Summary

- **Programming language**: Lua
- **Main size**: 2,9 KB
- **Extra size**: 0 B
- **Total size**: 2,9 KB
- **Feature count**: 17
- **Bytes per feature**: 170 B

## 3. Controls

- <kbd>A</kbd> or <kbd>H</kbd>: move left
- <kbd>S</kbd> or <kbd>J</kbd>: rotate counterclockwise
- <kbd>D</kbd> or <kbd>L</kbd>: move right
- <kbd>K</kbd> or <kbd>W</kbd>: hard drop
- <kbd>Ctrl</kbd>+<kbd>C</kbd>: quit

## 4. Features

1. **All tetrominoes**
2. **Colored pieces**
3. **Faster levels**: `speed = min(score / 20, 9)`
4. **Game over detection**
5. **Game over screen**: game over text
6. **Gravity**
7. **Hard drop**: couple frames lock
8. **Horizontal movement**
9. **Line clearing**
10. **Line clear points**:
    - **Single**: 1
    - **Double**: 4
    - **Triple**: 9
    - **Tetris**: 16
11. **No bugs**
12. **No ceiling**
13. **Piece preview**: single piece
14. **Quit**: terminate program
15. **Retry**: automatic
16. **Rotation**
17. **Sleep mode**: from OS

## 5. How to play (MacOS only)

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. Run the following commands, replacing `/path/to/tetris.lua`:
    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install lua
    lua /path/to/tetris.lua
    ```
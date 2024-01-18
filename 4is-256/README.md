# 4is 256 by Řrřola

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/.template/archive)
- [Source code](https://link.to/source.code)

## 2. Summary

- **Programming language**: ProgrammingLanguage
- **Main size**: 256 B
- **Extra size**: 0 B
- **Total size**: 256 B
- **Feature count**: 13
- **Bytes per feature**: 20 B

## 3. Controls

### 3.1. Pause screen

- <kbd>F16</kbd>: pause
- <kbd>⇧ Left Shift</kbd>: move left
- <kbd>⇧ Right Shift</kbd>: move right
- <kbd>Ctrl</kbd>: rotate counterclockwise
- <kbd>Alt</kbd>: soft drop

### 3.2. Pause screen

- <kbd>Any Key</kbd>: unpause

## 4. Features

1. **All tetrominoes**
2. **Animations**
3. **Colored pieces**
4. **Drop points**: `1 * fall_height`
5. **Game over detection**
6. **Gravity**
7. **Horizontal movement**
8. **Line clearing**
9. **Line clear points**:
    - **Single**: 32
    - **Double**: 96
    - **Triple**: 160
    - **Tetris**: 224
10. **No bugs**
11. **Pause**: pause emulation
12. **Rotation**
13. **Soft drop**

## 5. How to play

1. [Download the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main)
2. [Download DOSBox](https://sourceforge.net/projects/dosbox/files/latest/download)
3. Move `4is256.com` to `~/dosgames`
4. [Setup AUTOEXEC](https://dosbox.com/wiki/AUTOEXEC)
5. Run the command for your operating system:
    - Windows:
        ```shell
        dosbox -c 4is256
        ```
    - MacOS:
        ```shell
        /Applications/dosbox.app/Contents/MacOS/DOSBox -c 4is256
        ```
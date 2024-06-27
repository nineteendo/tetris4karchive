# 4is 256 by Jan Kadlec

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/4is-256/archive)
- [Source code](https://pouet.net/prod.php?which=29286)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 256 B
- **Extra size**: 0 B
- **Total size**: 256 B
- **Feature count**: 16
- **Bytes per feature**: 16 B

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
4. **Drop**: soft drop
5. **Drop points**: `1 * fall_height`
6. **Faster levels**: `speed = log2(lines)`
7. **Game over detection**
8. **Gravity**
9. **Horizontal movement**
10. **Line clearing**
11. **Line clear points**:
    - **Single**: 32
    - **Double**: 96
    - **Triple**: 160
    - **Tetris**: 224
12. **No bugs**
13. **No ceiling**
14. **Pause**: pause emulation
15. **Placement transition**: increase brightness
16. **Rotation**

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
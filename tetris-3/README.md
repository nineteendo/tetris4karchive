# Tetris by nitacku

## 1. Links

- [Back to overview](../README.md)
- [How to play](#7-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris-3/archive)
- [Source code](https://ticalc.org/archives/files/fileinfo/371/37183.html)

## 2. Summary

- **Programming language**: TI-BASIC
- **Main size**: 2,8 KB
- **Extra size**: 0 B
- **Total size**: 2,8 KB
- **Feature count**: 17
- **Bytes per feature**: 166 B

## 3. Pause menu options

- **resume**: unpause
- **new**: start new game
- **scores**: view high scores
- **quit**

## 4. Controls

- <kbd>On</kbd>: quit

### 4.1. Game

- <kbd>Trace</kbd>: pause
- <kbd>←</kbd>: move left
- <kbd>↑</kbd>: rotate clockwise
- <kbd>↓</kbd>: soft drop
- <kbd>→</kbd>: move right

### 4.2. Pause menu

- <kbd>Trace</kbd>: unpause
- <kbd>2nd</kbd> or <kbd>↵ Enter</kbd>: choose selected option
- <kbd>↑</kbd>: select previous option
- <kbd>↓</kbd>: select next option

### 4.3. Score menu

- <kbd>Any Key</kbd>: return to pause menu

## 5. Features

1. **All tetrominoes**
2. **Animations**
3. **Faster levels**: `speed = level`
4. **Game over detection**
5. **Game over screen**: animation
6. **Gravity**
7. **High scores**: top 3
8. **Horizontal movement**
9. **Line clearing**: animation
10. **Line clear points**:
    - **Single**: 1000
    - **Double**: 3000
    - **Triple**: 6000
    - **Tetris**: 10000
11. **Pause**: menu with restart, high scores and quit
12. **Piece preview**: single piece
13. **Quit**
14. **Restart**
15. **Retry**
16. **Rotation**
17. **Soft drop**

## 6. Bugs

1. If you pause at the wrong time, you place the piece in the air
2. Lines come down from the ceiling if you clear a line after placing a piece in the top 2 rows
3. The game crashes at level 25
4. The game over animation doesn't play if you hold <kbd>↑</kbd> or <kbd>↓</kbd>
5. You don't fall if you hold <kbd>←</kbd> or <kbd>→</kbd>

## 7. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 2 ways:

### 7.1. WabbitEmu (Windows only)

1. [Download ti84se.rom](https://tiroms.weebly.com/uploads/1/1/0/5/110560031/ti84se.rom)
2. [Download WabbitEmu](https://github.com/sputt/wabbitemu/releases/download/v1.9.5.22/Wabbitemu.exe)
3. Open WabbitEmu
4. Browse for `ti84se.rom`
5. View > Enable skin
6. Load `TETRIS.8XP`
7. Run prgmTETRIS

### 7.2. TI-84

1. [Download TI Connect™ CE](https://education.ti.com/software/update/84-ce-software-update/84ce-download?q1=ti-connect&count=1)
2. Open TI Connect™ CE
3. Connect your calculator with a USB Mini-B cable
4. Open Calculator Explorer Workspace
5. Transfer `TETRIS.8XP`
6. Run prgmTETRIS
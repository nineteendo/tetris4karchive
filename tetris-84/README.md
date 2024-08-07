# Tetris 84 by Nice Zombies

## 1. Links

- [Back to overview](../README.md)
- [How to play](#6-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris-84/archive)
- [Source code](https://github.com/nineteendo/ti84programs/blob/master/tetris-84)

## 2. Summary

- **Programming language**: TI-BASIC
- **Main size**: 1,5 KB
- **Extra size**: 91 B
- **Total size**: 1,6 KB
- **Feature count**: 32
- **Bytes per feature**: 47 B

## 3. Pause menu options

- **Return**: unpause
- **New**: start new game
- **Stop**: quit

## 4. Controls

- <kbd>On</kbd>: quit

### 4.1. Game

- <kbd>Window</kbd>: hold piece
- <kbd>Trace</kbd>: pause
- <kbd>2nd</kbd>: rotate clockwise
- <kbd>←</kbd>: move left
- <kbd>→</kbd>: move right
- <kbd>Alpha</kbd>: rotate counterclockwise
- <kbd>↓</kbd>: soft drop

### 4.2. Pause menu

- <kbd>Window</kbd>: select next option
- <kbd>Trace</kbd>: choose selected option
- <kbd>↵ Enter</kbd>: exit sleep mode

## 5. Features

1. **All tetrominoes**
2. **Alternative rotation**
3. **Animations**
4. **Drop**: soft drop
5. **Drop points**: `1 * fall_height`
6. **Drought prevention**: pieces are drawn from bags, except the first
7. **Easter eggs**: hold queue starts with a long bar
8. **Faster levels**: `speed = min(level, 9)`
9. **Game over detection**
10. **Game over screen**: fill animation, then pause
11. **Gravity**
12. **High scores**: top 3, updated (not refreshed) in real time
13. **Hold piece**: swap with next piece, indicated with `.`
14. **Horizontal movement**
15. **Level score multiplier**: `level + 1`
16. **Level selection**: start from level 0 - 9
17. **Line clearing**: animation
18. **Line clear points**:
    - **Single**: `40 * multiplier`
    - **Double**: `100 * multiplier`
    - **Triple**: `300 * multiplier`
    - **Tetris**: `1200 * multiplier`
19. **No bugs**
20. **No ceiling**
21. **Obstacle height selection**: start with height 0 - 14
22. **Pause**: menu with restart and quit
23. **Persistent high scores**: from OS
24. **Piece preview**: single piece
25. **Placement points**: 1
26. **Placement transition**: hide center of rotation
27. **Quit**: shows stack
28. **Restart**
29. **Retry**
30. **Rotation**
31. **Sleep mode**: activates after 1000 ticks of inactivity on pause screen
32. **Visible center of rotation**: indicated with `+`

## 6. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 2 ways:

### 6.1. WabbitEmu (Windows only)

1. [Download ti84se.rom](https://web.archive.org/web/20240409191813/http://tiroms.weebly.com/uploads/1/1/0/5/110560031/ti84se.rom)
2. [Download WabbitEmu](https://github.com/sputt/wabbitemu/releases/download/v1.9.5.22/Wabbitemu.exe)
3. Open WabbitEmu
4. Browse for `ti84se.rom`
5. View > Enable skin
6. Load `ZOOM.8XP` and `TETRIS.8XP`
7. Run prgmZOOM
8. Select `prgm`
9. Run prgmTETRIS

### 6.2. TI-84

1. [Download TI Connect™ CE](https://education.ti.com/software/update/84-ce-software-update/84ce-download?q1=ti-connect&count=1)
2. Open TI Connect™ CE
3. Connect your calculator with a USB Mini-B cable
4. Open Calculator Explorer Workspace
5. Transfer `ZOOM.8XP` and `TETRIS.8XP`
6. Run prgmZOOM
7. Select `prgm`
8. Run prgmTETRIS

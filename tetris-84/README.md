# Tetris-84 by Nice Zombies

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetris-84/archive)
- [Source code](https://github.com/nineteendo/ti84programs/blob/master/tetris-84)

## 2. Summary

- **Programming language**: TI-BASIC
- **Main size**: 1,5 KB
- **Extra size**: 91 B
- **Total size**: 1,6 KB
- **Feature count**: 29
- **Bytes per feature**: 50 B

## 3. Controls

### 3.1. Game

- <kbd>Window</kbd>: hold piece
- <kbd>Trace</kbd>: pause
- <kbd>2nd</kbd>: rotate clockwise
- <kbd>Left</kbd>: move left
- <kbd>Right</kbd>: move right
- <kbd>Alpha</kbd>: rotate counterclockwise
- <kbd>Down</kbd>: soft drop

### 3.2 Pause menu

- <kbd>Window</kbd>: select next option
- <kbd>Trace</kbd>: choose selected option
- <kbd>Enter</kbd>: exit sleep mode

## 4. Features

1. **All tetrominoes**
2. **Alternative rotation**
3. **Animations**
4. **Drop points**: `1 * cell`
5. **Drought protection**: pieces are drawn from bags, except the first
6. **Easter eggs**
7. **Faster levels**: `speed = min(level, 9)`
8. **Game over detection**
9. **Game over screen**: fill animation, then pause
10. **Gravity**
11. **Height selection**: start with height 0 - 14
12. **Highscores**: saves current score
13. **Hold queue**: swap with next queue, indicated with `.`
14. **Horizontal movement**
15. **Level score multiplier**: `level + 1`
16. **Level selection**: start from level 0 - 9
17. **Line clearing**
18. **Line clear points**:
    - **Single**: `40 * multiplier`
    - **Double**: `100 * multiplier`
    - **Triple**: `300 * multiplier`
    - **Tetris**: `1200 * multiplier`
19. **Next queue**: singe piece
20. **No bugs**
21. **Pause**: menu with restart and quit
22. **Place points**: 1
23. **Quit**: shows stack
24. **Restart**
25. **Retry**
26. **Rotation**
27. **Sleep mode**: activates after 1000 ticks of inactivity on pause screen
28. **Soft drop**
29. **Visible center of rotation**: indicated with `+`

## 5. How to play

After [downloading the archive](https://codeload.github.com/nineteendo/tetris4karchive/zip/refs/heads/main), the program can be run in one of these 2 ways:

### 5.1 WabbitEmu

1. [Download ti84se.rom](https://tiroms.weebly.com/uploads/1/1/0/5/110560031/ti84se.rom)
2. [Download WabbitEmu](https://github.com/sputt/wabbitemu/releases/download/v1.9.5.22/Wabbitemu.exe)
3. Open WabbitEmu
4. Browse for `ti84se.rom`
5. View > Enable skin
6. Load `ZOOM.8XP` and `TETRIS.8XP`

### 5.2 TI-84

1. [Download TI Connect™ CE](https://education.ti.com/en/software/update/84-ce-software-update/84ce-download?q1=ti-connect&count=1)
2. Open TI Connect™ CE
3. Connect your calculator with a USB Mini-B cable
4. Open Calculator Explorer Workspace
5. Transfer `ZOOM.8XP` and `TETRIS.8XP`
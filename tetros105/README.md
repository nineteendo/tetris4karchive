# TetrOS v1.05 by Tomasz Grysztar

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tetros105/archive)
- [Source code](https://board.flatassembler.net/topic.php?p=211564#211831)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 508 B
- **Extra size**: 4 B
- **Total size**: 512 B
- **Feature count**: 16
- **Bytes per feature**: 32 B

## 3. Controls

- <kbd>Esc</kbd>: restart
- <kbd>Up</kbd>: rotate counterclockwise
- <kbd>Left</kbd>: move left
- <kbd>Down</kbd>: hard drop
- <kbd>Right</kbd>: move right

## 4. Features

1. **All tetrominoes**
2. **Faster levels**: `speed = points / 100 % 4`
3. **Game over detection**
4. **Gravity**
5. **Hard drop**: 1 frame lock
6. **Height score multiplier**: `multiplier = 1 + height / 2`
7. **Horizontal movement**
8. **Line clearing**
9. **Line clear points**: 1 (single), 3 (double), 7 (triple), 15 (tetris)
10. **Next queue**: singe piece
11. **No bugs**
12. **Place points**: 1
13. **Random background color**: restart if you can't see the walls
14. **Restart**
15. **Retry**
16. **Rotation**

## 5. How to play

After downloading, the program can be run in one of these 3 ways:

### 5.1. QEMU

1. [Download QEMU](https://www.qemu.org/download)
2. Run the following command, replacing `/path/to/tetros.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tetros.img
    ```

### 5.2. DOSBox

1. [Download DOSBox](https://www.dosbox.com/download.php?main=1)
2. Run the command for your operating system, replacing `/path/to/tetros.img`:

### 5.2.1 Windows

```shell
dosbox -c "BOOT /path/to/tetros.img"
```

### 5.2.2 MacOS

```shell
/Applications/dosbox.app/Contents/MacOS/DOSBox -c "BOOT /path/to/tetros.img"
```

### 5.3. USB stick (Windows only)

For ASUS laptops follow this tutorial first: https://youtu.be/ECmYtPBSMI8

1. Get an empty USB stick and insert it
2. [Download Rufus](https://rufus.ie)
3. Open Rufus
4. Select USB stick
5. Select `tetros.img`
6. Click on START
7. Restart PC
8. Tap <kbd>Esc</kbd> until the boot menu appears
9. Select USB stick
10. Press <kbd>Enter</kbd>
# Tinytris by Pellsson

## 1. Links

- [Back to overview](../README.md)
- [How to play](#5-how-to-play)
- [Archived files](https://github.com/nineteendo/tetris4karchive/tree/main/tinytris/archive)
- [Source code](https://github.com/pellsson/tinytris)

## 2. Summary

- **Programming language**: Assembly
- **Main size**: 251 B
- **Extra size**: 0 B
- **Total size**: 251 B
- **Feature count**: 7
- **Bytes per feature**: 36 B

## 3. Controls

- <kbd>Up</kbd>: rotate counterclockwise
- <kbd>Left</kbd>: move left
- <kbd>Right</kbd>: move right

## 4. Features

1. **All tetrominoes**
2. **Game over detection**
3. **Gravity**
4. **Horizontal movement**
5. **Line clearing**
6. **No bugs**
7. **Rotation**

## 5. How to play

After downloading, the program can be run in one of these 2 ways:

### 5.1. QEMU

1. [Download QEMU](https://www.qemu.org/download)
2. Run the following command, replacing `/path/to/tinytris.img`:
    ```shell
    qemu-system-x86_64 -drive format=raw,file=/path/to/tinytris.img
    ```

### 5.2. DOSBox

1. Move `tinytris.com` to `~/dosgames`
2. [Download DOSBox](https://www.dosbox.com/download.php?main=1)
3. [Setup AUTOEXEC](https://www.dosbox.com/wiki/AUTOEXEC)
4. Run the command for your operating system:

### 5.2.1 Windows

```shell
dosbox -c tinytris.com
```

### 5.2.2 MacOS

```shell
/Applications/dosbox.app/Contents/MacOS/DOSBox -c tinytris.com
```
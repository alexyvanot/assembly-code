# assembly-code

## Requirements

Note that this program needs [DOSBox](https://www.dosbox.com/download.php?main=1) to work.


> **[Download Here](https://www.dosbox.com/download.php?main=1)**

## Configuration

Please, configure the DOSBox config file named
`dosbox-X.XX-X.conf`
situated in
`%appdata%\Local\DOSBox`


Change thoses lines like this:
```
windowresolution=1024x768
output=ddraw
```


Then add thoses lines at the bottom of the config file:
```
keyb fr
mount c C:\ASM\
c:
```


## Commands

> Compile **myprog.asm** code to **myprog.obj**
>
>
>```C:\> masm myprog```
>

> Compile **myprog.obj** code to **myprog.exe**
>
>
>```C:\> link myprog```
>

> Execute **myprog.exe**
>
>
>```C:\> myprog```
>

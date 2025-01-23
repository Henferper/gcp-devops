<div style="text-align: justify;">

# **About Linux's Sistem**

## **Files's sistem**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Linux's sistem is based on files. Every thing in Linux is a file, even directories. So, wich data group is called `file` and the structure and logical rules used to organize files are called `filesystem`.

## Yum and Dnf packges
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Linux's sistem has a package manager called `yum` (Yellowdog Updater Modified). This case we used Sistem CentOs, so the next versions of 8 to use `DNF` and `YUM` to previus versions. 

## Bin and Sbin file
The `bin` file is the directory where the binary files are stored.

The `sbin` file is the directory where the system binary files are stored to configure the operational system `(Is need root privileges to execute)`.

## **os file**
The `os` file is the directory where the operational system files are stored.

## **etc file**
The `etc` file is the directory where the configuration files are stored.

## **cat command**
The `cat` command is used to display the content of a file.

## **/usr/lib/modules**
The `/usr/lib/modules` directory is used to store the kernel modules.

## **/usr/lib/os-release**
The `/usr/lib/os-release` file is used to store the operational system release information.

## **/opt**
The `/opt` directory is used to store the optional packages.

## **/boot**
The `/boot` directory is used to store the boot files.

## **Remove file or directory**
The `rm` command is used to remove a file or directory.

The `rmd` command is used to remove a directory.

The `rm -rf` command is used to remove a directory and all its contents.

## **Files manipulation**
The `cp` command is used to copy a file.

The `mv` command is used to move a file.

The `mv old-name-file new-name-file` command is used to rename a file.

The `touch` command is used to create a new empty file.

Then `mkdir` command is used to create a new directory.

## **File Permissioning**

There are three users type: `root`, `user` and `group`.

The file properties just can changed by the `root` user.

The `chown` and `chgrp` commands are used to change the file owner and group.

The `ls-l` command is used to display the file properties,like the owner, group, permission, size, date and time.

The file persmissions are show by a letters sequencie, where the first (R - read) letter is the type of file, the second (W - write) letter is the permission for the owner, the third (X - execute) letter is the permission for the group.

The `root` user can read, write and execute the file.

the `group` just can`t write.

the `user` just can`t write.

## **CHMOD commands**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The `chmod` command is used to change the file permission.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The permissions can be changed by numerics letters, where 0 is none permission, 1 is execute permission, 2 is write permission and 3 is read and write permission.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The permissions can be too represents by letters, where `r` is read permission, `w` is write permission, `x` is execute permission and `-` is denied permission.

## **Diference between `chmod` and `chgrp` commands**

The `chmod` command is used to change the root file permission.

The `chgrp` command is used to change the file group.

## **Octal and Binary Permissions**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The octal permissions are show by a number sequencie, where the first number is the type of file, the second number is the permission for the owner, the third number is the permission for the group and the fourth number is the permission for the others.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;But the binary permissions are show by a binary sequencie, where the first number is the type of file, the second number is the permission for the owner, the third number is the permission for the group and the fourth number is the permission for the others.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The `CHMOD` can be used with `+` operator to add a permission, with `-` operator to remove a permission and with `=` operator to set a permission.


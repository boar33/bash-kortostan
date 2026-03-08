# script to create a directory

if you run create_directory.sh it will create a subfolder "test-folder" in "some-folder",
or it will check if "test-folder" already exists in "some-folder"

then if "bin" and "scripts" folders inside "test-folder" are not existed,
it will create them

then if "message_printer.sh" script is not existed it will create that script inside
"some-folder/test-folder/bin", the script prints message to console

then it makes "message_printer.sh" executable

and finally it creates symbolic link "./msgprinter" which you can use to run message_printer.sh

1. to run create_directory.sh
```
bash create_directory.sh
```

2. After its completion run next command:
```
./msgprinter
```
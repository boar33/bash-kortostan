#!/bin/bash
#: Title       : create_directory.sh
#: Date        : 08 march 2026
#: Author      : Bat Erdene
#: Version     : 1.0
#: Description : creates directories in some-folder
#: Options     : None

# define required directories
TARGET_DIR="some-folder/test-folder"
BIN_DIR="$TARGET_DIR/bin"
SCRIPTS_DIR="$TARGET_DIR/scripts"

if [ ! -d "$TARGET_DIR" ] 
then
    mkdir -p "$TARGET_DIR"
else
    echo "Directory already exists: $TARGET_DIR"
fi

if [ ! -d "$BIN_DIR" ] 
then
    mkdir -p "$BIN_DIR"
else
    echo "Directory already exists: $BIN_DIR"
fi

if [ ! -d "$SCRIPTS_DIR" ] 
then
    mkdir -p "$SCRIPTS_DIR"
else
    echo "Directory already exists: $SCRIPTS_DIR"
fi

# check if file exist if not let's create it
if [ ! -a "$BIN_DIR/message_printer.sh" ] 
then
    echo "#!/bin/bash
#: Title       : message_printer
#: Date        : 08 march 2026
#: Author      : Bat Erdene
#: Version     : 1.0
#: Description : prints message to console
#: Options     : None 
echo 'test message from message_printer.sh'" > "$BIN_DIR/message_printer.sh"
else
    echo "File already exists: $BIN_DIR/message_printer.sh"
fi

# make it executable
chmod +x "$BIN_DIR/message_printer.sh"

echo "Folder structure and message_printer.sh created"

ln -sf "$BIN_DIR/message_printer.sh" "msgprinter"


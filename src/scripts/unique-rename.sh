#!/opt/homebrew/bin/bash

# Script to rename a given file to the format uuid.<extension>
#
# Function to return the extension for the file name. Based on the behavior
# of bash the following behavior is expected: 
#
# extension "foo.bar" yields "bar"
# extension "foo.moo.bar" yields "bar"
# extension "foo." yields "."
# extension "foo" yields "foo"
#
extension() {
  echo -n "${1##*.}"
}

#
# Yield a unique filename for the input filename in the 
# format <uuid>.<extension>
#
unique_name() {
  echo -n "$(uuidgen).$(extension "$1")"
}

#
# Main script logic. Placed in function to make
# testing easier.
#
# Only rename the file if it has an extension.
#
rename_to_unique_name() {
  exten="$(extension "$1")"

  case $exten in
    "")
      ;;

    "$1")
      ;;
    
    *)
      mv -nv "$1" "$(dirname "$1")/$(unique_name "$1")"
      ;;
  esac
}

#
# Script entry point
#
if [ "$#" -ne 1 ]; then
  echo "Usage: $(basename "$0") <filename>"
fi

# Check to see if file is already a Regex
filename_no_path=$(basename -- "$1")
filename_no_extension="${filename_no_path%.*}"

#
# uuidgen outputs UUIDs in uppercase so we only match upper case.
#
UUID_REGEX="^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$"

#
# Only rename if file does not match the expected pattern
#
if ! [[ $filename_no_extension =~ $UUID_REGEX ]];
then
  rename_to_unique_name "$1"
fi  

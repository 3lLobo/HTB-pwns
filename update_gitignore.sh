# update the gitignore file with to include new folders

export TARGET_FOLDER=$1

if [ -z "$TARGET_FOLDER" ]; then
  echo "Please provide a target folder"
  exit 1
fi

# Get the folders in the target folder without recursing
for folder in $(find $TARGET_FOLDER -maxdepth 1 -type d); do
  # Check if the folder is already in the gitignore file
  if grep -q $folder .gitignore; then
    echo "Folder $folder already in .gitignore"
    continue
  fi
  echo "Adding $folder to .gitignore"
  echo "!$folder/" >>.gitignore
  echo "!$folder/**" >>.gitignore
  echo "" >>.gitignore
done

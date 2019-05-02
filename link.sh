cd ~/dot/files
for file in $(find . -type f -o -type l | sed 's|./||'); do
    printf "${CYAN}Symlinking ${file} to ~/${file}\n"
    ln -sf ~/dot/files/"$file" ~/"$file"
done

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

cd ~/dot/files
for file in $(find . -type f -o -type l | sed 's|./||'); do
    printf "${CYAN}Symlinking ${file} to ~/${file}\n"
    ln -sf ~/dot/files/"$file" ~/"$file"
done

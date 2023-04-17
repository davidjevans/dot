cd ~/dot/files
for file in $(find . -type f -o -type l | sed 's|./||'); do
	git_file_path=$( realpath ${file} )
	printf "${CYAN}Symlinking ${file} to ~/${file}\n"
    	ln -sf "$git_file_path" ~/"$file"
done

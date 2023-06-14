dot_dir_location=$( dirname -- "$0")
for file_name in $(find "${dot_dir_location}/files" -type f -o -type l); do
	git_file_path=$( realpath ${file_name} )
	printf "${CYAN}Symlinking ${git_file_path} to ~/${file_name}\n"
	ln -sf "$git_file_path" ~/"$file"
done

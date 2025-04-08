 # 1. Creating a Tar Archive
tar -cf archive_name.tar /path/to/directory_or_file

# 2. Creating an Uncompressed Archive using tar Command
tar -cf archive_name.tar /path/to/directory_or_file

# 3. Creating a Compressed Archive using tar Command
	# 1. Gzipped Tar
	tar -czf archive_name.tar.gz /path/to/directory_or_file

	# 2. Bzipped Tar
	tar -cjf archive_name.tar.bz2 /path/to/directory_or_file

# 4. Extracting Files from an Archive
tar -xf archive_name.tar

# 5. Extracting a Compressed Tar Archive
	# 1. Extracting a Gzipped Tar
	tar -xzf archive_name.tar.gz

	# 2. Extracting a Bzipped Tar
	tar -xjf archive_name.tar.bz2

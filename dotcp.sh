#!/bin/bash

echo "Starting script..."

# 定义源目录和目标目录
src_dir=~/
dest_dir=~/dotfile

# 确保目标目录存在
if [ ! -d "$dest_dir" ]; then
    echo "Creating destination directory $dest_dir"
    mkdir -p "$dest_dir"
fi

# 遍历源目录下的所有隐藏文件
for file in "$src_dir"/.[^.]*; do
    if [ -f "$file" ]; then # 检查是否为普通文件
        filename=$(basename "$file")
        dest_file="$dest_dir/$filename"
        echo "Copying $filename to $dest_file"
        cp -p "$file" "$dest_file"
    fi
done

echo "Script finished."

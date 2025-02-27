#!/bin/bash

echo "Starting script..."

# 定义源目录和目标目录
src_dir=~/dotfile
dest_dir=~/

if [ ! -d "$src_dir" ]; then
    echo "Source directory $src_dir does not exist."
    exit 1
fi

for file in "$src_dir"/*; do
    # 获取文件名
    filename=$(basename "$file")
    echo "Processing $filename"
    # 创建符号链接
    ln -sf "$file" "$dest_dir/$filename"
done

echo "Script finished."

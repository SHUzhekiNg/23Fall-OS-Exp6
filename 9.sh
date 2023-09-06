#!/bin/bash

# 显示用户主目录名（HOME）
echo "用户主目录名（HOME）: $HOME"

# 显示命令搜索路径（PATH）
echo "命令搜索路径（PATH）: $PATH"

# 检查是否提供了位置参数
if [ $# -eq 0 ]; then
  echo "没有提供位置参数，无法显示文件类型和权限。"
else
  # 循环处理所有位置参数
  for file in "$@"; do
    # 检查文件是否存在
    if [ -e "$file" ]; then
      # 显示文件类型
      if [ -d "$file" ]; then
        type="目录"
      elif [ -f "$file" ]; then
        type="普通文件"
      else
        type="其他"
      fi
      
      # 显示文件权限
      permissions=$(ls -l "$file" | awk '{print $1}')
      
      # 显示文件信息
      echo "文件: $file"
      echo "类型: $type"
      echo "权限: $permissions"
    else
      echo "文件 '$file' 不存在。"
    fi
  done
fi

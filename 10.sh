#!/bin/bash

echo "HOME: $HOME"
echo "PATH: $PATH"


if [ $# -eq 0 ]; then
  echo "没有提供位置参数，无法显示文件类型和权限。"
else
  for file in "$@"; do
    if [ -e "$file" ]; then
      if [ -d "$file" ]; then
        type="目录"
      elif [ -f "$file" ]; then
        type="普通文件"
      else
        type="其他"
      fi
      
      permissions=$(ls -l "$file" | awk '{print $1}')

      echo "文件: $file"
      echo "类型: $type"
      echo "权限: $permissions"
    else
      echo "文件 '$file' 不存在。"
    fi
  done
fi

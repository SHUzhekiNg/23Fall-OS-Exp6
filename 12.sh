#!/bin/bash

ls -l > filedir.txt
mkdir testdir2
cp c*.* testdir2

for file in $(ls); do
    chmod 777 "$file"  # 777
done

ls -l testdir2 >> filedir.txt
cat /etc/passwd >> filedir.txt
less filedir.txt

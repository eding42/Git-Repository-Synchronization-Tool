#!/bin/bash

cd ..

echo "reached this point"

while read name; do
    name="git clone $name"
    $name
done < "./Git-Repository-Synchronization-Tool/bin/repo-list.txt"

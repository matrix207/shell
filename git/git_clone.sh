#!/usr/bin/sh
################################################################################
# git clone repositories
# History:
#        2013/04/23 Dennis Create
################################################################################

url=https://github.com/matrix207/
repostories=(matrix207.github.com shell config unpv3 vim VC c ldd emacs.d euler note pyfunny)
repos_size=${#repostories[@]}

for ((i=1;i<$repos_size;i++))
do
    if [ ! -d "${repostories[${i}]}" ]; then
        git clone ${url}${repostories[${i}]}.git
    fi
done
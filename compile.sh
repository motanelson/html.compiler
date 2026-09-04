printf "\033c\033[47;30m\ngive a xml file to compile\n"
read a
printf "\033[47;30m\ngive a pas lib file to compile\n"
read b

fpdoc --package=$a --input=$b --descr=$a --format=chm --output=$a.chm

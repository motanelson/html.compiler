printf "\033c\033[47;30m\ngive a xml file to compile"
read a

fpdoc --package=$a  --descr=$a --format=chm --output=$a.chm

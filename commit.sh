for file in * :
    do
        git add $file
        git commit -m $1
        git push -u origin main
    done

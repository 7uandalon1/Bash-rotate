while true
do
    files=($(ls | grep "file" | sed 's/file_//' | sed 's/.txt//' ))

    max=${files[0]}
    for n in "${files[@]}" ; do
            ((n > max)) && max=$n
    done
    rm  $(ls -I "file_${max}.txt" | grep "file")  
    sleep 5
done





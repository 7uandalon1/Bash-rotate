read files
for ((i = 0; i <= files; i++))
    do 
        if [[ $i -lt 10 ]]
        then
            $(echo  "${i}" >  file_0${i}.txt)
        else
            $(echo "${i}" >  file_${i}.txt)
        fi
    done
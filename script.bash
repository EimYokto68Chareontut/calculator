# #!/bin/bash


# cat ./course/course_b.txt|while read iline ;do
#     # echo $iline | cut -c1-2
#     po=$(echo $iline | cut -c1-2)
#     echo $po
#     echo '---------------------'
#     done

# cat ./course/course_b.txt|while read iline ;do
#         x=$x+1 
#         po[$x]=$(echo $iline | cut -c6-8)
#         echo ${po[$x]}
# echo '---------------------'

awk -F "," '{print $1}' ./course/course_b.txt |head


#         echo ${po[1]}
# echo ${po[2]}
# echo ${po[3]}
# echo ${po[4]}
# done
# echo '|||||||||||||'
#         echo ${po[1]}
# echo ${po[2]}
# echo ${po[3]}
# echo ${po[4]}
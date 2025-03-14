#!/bin/bash
#code
name_select() {
        read -p "Enter name : " name
        echo "Hello : " $name
}
count_course(){
        while read -p "Enter count_course: " count && [[ ! "$count" =~ ^[0-9]+$ || "$count" -lt 0 || "$count" -gt 100 ]]; do 
                echo "Enter 0-100"; 
        done 
}

read_course() {
        ls -l course | awk '{print $9}'
        # for (( i=1; i<=$count; i++ ))
        # do 
                while read -p "Enter your course พิมวิชาที่ต้องการในรูปแบบ a b c:" course && [[ ! "$course" =~ ^[a-z]+$ ]]; do 
                echo "Enter 0-100"; 
                done 
        # done
    echo $course;
}

enter_score() {
        for (( i=1; i<=$count; i++ )) do         
                while read -p "Enter score$i: " grade[$i] && [[ ! "${grade[$i]}" =~ ^[0-9]+$ || "${grade[$i]}" -lt 0 || "${grade[$i]}" -gt 100 ]]; do 
                        echo "Enter 0-100"; 
                done 
        done
}

pull_course(){
        cat ./course/course_$course.txt|while read iline ;do
        x=$((x+1));
        echo $iline | awk '{print $1}'
        echo '---------------------'
        pullcourse_low[$x]=$(echo $iline | awk '{print $1}')
        echo ${pullcourse_low[$x]}
        echo '---------------------'
        # pullcourse_high[$x]=$(echo $iline | cut -c6-8)
        #     echo $iline | cut -c1-2
        # echo ${pullcourse_low[1]}
        # echo ${pullcourse_high[1]}
        #echo '---------------------'
        done
}

# exit
for (( i=1; i<=$count; i++ )) do 
       echo $i
       if [[ ${grade[$i]} -ge ${pullcourse_low[$i]} ]]; then
               echo 'A'
       elif [[ ${grade[$i]} -ge ${pullcourse_low[$i]} ]]; then
               echo 'B'
       fi
       echo ${grade[$i]}
        
done
#Start program
x=0
name_select
count_course
read_course
pull_course
enter_score










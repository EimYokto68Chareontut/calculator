#!/bin/bash
name_select() {
    read -p "Enter name : " name
    echo "Hello : " $name
}

read_course() {
    ls -l course | awk '{print $9}'
    read -p "Enter your course พิมวิชาที่ต้องการในรูปแบบ a b c:" course
}

Enter_score() {
for ((i=0;i>=4;i++)); do x=$((i+1));    
        while read -p "Enter score$x: " grade[$i] && [[ ! "${grade[$i]}" =~ ^[0-9]+$ || "${grade[$i]}" -lt 0 || "${grade[$i]}" -gt 100 ]]; do 
                echo "Enter 0-100"; 
        done 
done
}

#Start program
name_select
read_course
Enter_score



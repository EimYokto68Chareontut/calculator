#!/bin/bash
name
ls -l course | awk '{print $9}'
read -p "Enter your course พิมวิชาที่ต้องการในรูปแบบ A B C:" course
read course_$course
for i in 0 1 2 3 4; do x=$((i+1));    
        while read -p "Enter score$x: " grade[$i] && [[ ! "${grade[$i]}" =~ ^[0-9]+$ || "${grade[$i]}" -lt 0 || "${grade[$i]}" -gt 100 ]]; do 
                echo "Enter 0-100"; 
        done 
done
for i in 0 1 2 3 4; do 
        x=$((i+1));
        if [[ ${grade[$i]} -ge 80 ]]
        then
                echo "score $x =A"
                credit[$i]=4
        elif [[ ${grade[$i]} -ge 70 ]]
        then
                echo "score $x =B"
                credit[$i]=3
        elif [[ ${grade[$i]} -ge 60 ]]
        then
                echo "score $x =C"
                credit[$i]=2
        elif [ ${grade[$i]} -ge 50 ]
        then
                credit[$i]=1
                echo "score $x =D"
        else
                credit[$i]=0
                echo "score $x =F"
        fi
done
sum=$((credit[0]+credit[1]+credit[2]+credit[3]+credit[4]))
echo 'GPA: '$(awk "BEGIN {printf \"%.2f\", $sum / ${#credit[@]}}")


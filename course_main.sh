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
for (( i=1; i<=$count; i++ ))
do         
        while read -p "Enter score$i: " grade[$i] && [[ ! "${grade[$i]}" =~ ^[0-9]+$ || "${grade[$i]}" -lt 0 || "${grade[$i]}" -gt 100 ]]; do 
                echo "Enter 0-100"; 
        done 
done


}
calculator_a(){
        for (( i=0; i<=4; i++ )) do 
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
        echo 'GPA: '$(awk "BEGIN {printf \"%.2f\", $sum / ${#credit[@]} }")
        }
calculator_b(){
        for (( i=0; i<=4; i++ )) do 
                x=$((i+1));
                if [[ ${grade[$i]} -ge 95 ]]
                then
                        echo "score $x =A"
                        credit[$i]=4
                elif [[ ${grade[$i]} -ge 80 ]]
                then
                        echo "score $x =B"
                        credit[$i]=3
                elif [[ ${grade[$i]} -ge 75 ]]
                then
                        echo "score $x =C"
                        credit[$i]=2
                elif [ ${grade[$i]} -ge 0 ]
                then
                        credit[$i]=1
                        echo "score $x =D"
                fi
        done
        sum=$((credit[0]+credit[1]+credit[2]+credit[3]+credit[4]))
        echo 'GPA: '$(awk "BEGIN {printf \"%.2f\", $sum / ${#credit[@]} }")
        }


#Start program
name_select
count_course
read_course
enter_score
exit
cat ./course/course_$course.txt






#!/usr/bin/bash

# ECHO COMMAND
#echo hello world!

#VARIABLES
#uppercase by convention
# letters,numbers,underscores

NAME1="brand"
#echo "my name is $NAME"
#echo "my name is ${NAME}"

#USER INPUT
# read -p "enter your name:" name
# echo "Hello $name, nice to meet you"

# if [ "NAME"=="brand" ]
# then 
#     echo " your name is $NAME"
# fi

# if [ "$NAME" == "brad" ]
# then 
#     echo " your name is $NAME"
# else
#     echo "your name is not $NAME"
# fi


# read -p "enter your name:" NAME
# if [ "$NAME" == "brad" ]
# then 
#     echo " your name is $NAME"
# elif [ "$NAME" == "san" ]
# then
#     echo " your name is san"

# else
#     echo "your name is not $NAME"
# fi

#comparision
# val1 -eq val2 return true if  values are equal
# val1 -ne val2 return true if values are not equal
# val1 -gt val2 return true if val1 is greater then val2
# val1 -ge val2 return true if val1 is greater then or equal to val2
# similalry -lt ,-le

# n1=3
# n2=5
# if [ "$n1" -gt "$n2" ]
# then
#     echo " $n1 is greater then $n2"
# else
#     echo " $n1 is less then $n2"
# fi


#FILE CONDITIONS

# -d file true if the file is a directory
# -e file true if the file exists 
# -f file true if the provided string is a file
# -g file true if the group id is set on a file
# -r file true if the file is readable
# -s file true if the file has non-zero size
# -u file true if the user id is not set on a file
# -w file true if the file is writable
# -x file true if the file is an excutable

# FILE="test.txt"

# if [ -f " $FILE" ]
# then
#     echo "$FILE exists"
# else
#     echo "$FILE does not existse"
# fi

#CASE  STATEMENT

# read -p "are you 21 or over? Y?N " ANSWER
# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#         echo "you can have a beer :)"
#         ;;
#     [nN] |[nN][oO])
#         echo "sorry ,no drinking"
#         ;;
#     *)
#         echo "please enter y/yes or n/no"
#         ;;
# esac


#simple for loop

# NAMES="bora santhosh"

# for NAME in $NAMES
#     do 
#         echo "hello $NAME"
# done


#FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

#WHILE LOOP - READ THROUGH A FILE LINE BY LINE

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "./new-1.txt"

# FUNCTION
# function say()
# {
#     echo "Hello world"
# }
# say

#FUNCTIONS WITH PARAMETERS

# function greet()
# {
#     echo "Hello , i am $1  $2"
# }
# greet "bora" "santhosh"


#CREATE FOLDER WRITE TO A FILE

# mkdir hello
# touch "hello/world.txt"
# echo "helo santhosh" >> "hello/world.txt"
# echo "created hello/world.txt"

# i=0


# for (( i=0 ; i < 10 ; i++ ))
# do
# mv $i.txt new-$i.txt

# done



# for TOKEN in "$@"
# do
#    echo $TOKEN
# done

# for(( i=0; i<10; i++ ))
# do
# touch ch$i.txt
# done


# backflipt=(1 2 3 4)
# echo ${backflipt[3]}


# for i in {1..4}
# do
#     read a[i]
# done
# echo ${a[*]}

echo  "enter the left end:"
read a
echo "enter the right end:"
read b
function isprime()
{
    if [ $1 -lt 2 ] ;
    then
        return
    fi
    count= 0
    for(( i=2; i<$1; i++))
    {
        if [ $(($1 % i)) -eq 0 ];
        then
            count=$(( count+1 ))
        fi
    }
    if [ $count -eq 0 ];
    then
        printf "%d" "$1"
    fi 
}

printf "prime Numbers from %d and %d are :" "$a"  "$b"
for(( i=a; i<=b;i++))
{
    isprime $i
}

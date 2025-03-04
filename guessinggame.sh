total_files=$(ls -al | egrep "^-" | wc -l | egrep -o "\d*")

function check {
while [[ $user_answer != $total_files ]] 
do
    if [[ $user_answer < $total_files ]] 
    then
        echo "Your guess is too low"
    elif [[ $user_answer > $total_files ]] 
    then
        echo "Your guess is too high"
    fi

    echo -n "How many files are there in current directory: "
    read user_answer
done
}

echo -n "How many files are there in current directory: "
read user_answer

check
echo "Congratulations! You're right"
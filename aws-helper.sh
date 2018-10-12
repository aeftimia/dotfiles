aws-describe() {
    cmd="aws ec2 describe-instances --query 'Reservations[*].Instances[*][${1}][${2}]' --output text"
    echo $cmd
    id=$(bash -c "$cmd")
    echo $id
}

aws-stop() {
    cmd="aws ec2 describe-instances --query 'Reservations[*].Instances[*][InstanceId][${1}]' --output text"
    echo $cmd
    id=$(bash -c "$cmd")
    aws ec2 stop-instances --instance-ids "${id}"
}

aws-start() {
    cmd="aws ec2 describe-instances --query 'Reservations[*].Instances[*][InstanceId][${1}]' --output text"
    echo $cmd
    id=$(bash -c "$cmd")
    aws ec2 start-instances --instance-ids "${id}"
}

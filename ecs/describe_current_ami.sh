INSTANCE=`aws ecs list-container-instances --profile $1 --cluster $2 | jq -r ".containerInstanceArns[0]"`
INSTANCE_ID=`aws ecs describe-container-instances --profile $1 --cluster $2 --container-instances $INSTANCE | jq -r ".containerInstances[0].ec2InstanceId"`
IMAGE_ID=`aws ec2 describe-instances --profile $1 --instance-ids $INSTANCE_ID | jq -r ".Reservations[0].Instances[0].ImageId"`
aws ec2 describe-images --profile $1 --image-id $IMAGE_ID | jq .

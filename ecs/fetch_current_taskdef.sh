taskdef=`aws ecs describe-services --profile $1 --cluster $2 --services $3 | jq -r '.services[0].taskDefinition' | awk -F'[/]' '{print $2}'`
echo $taskdef

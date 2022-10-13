taskdef=`aws ecs describe-services --cluster open-account --services account-manager-api --profile $1 | jq -r '.services[0].taskDefinition'`
FAMILY=`echo $taskdef | awk -F'[:]' '{print $6}' | awk -F'[/]' '{print $2}'`
REVISION=`echo $taskdef | awk -F'[:]' '{print $7}'`
echo $FAMILY":"$REVISION
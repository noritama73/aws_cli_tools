include .env

p:
	@echo $(PROFILE)

allow:
	@find . -type f -name '*.sh' | xargs chmod 775

current_taskdef:
	@./ecs/fetch_current_taskdef.sh $(PROFILE) $(CLUSTER) $(SERVICE)

current_ami:
	@./ecs/describe_current_ami.sh $(PROFILE) $(CLUSTER)

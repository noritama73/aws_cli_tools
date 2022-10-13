include .env

p:
	@echo $(PROFILE)

curent_taskdef:
	@./ecs/fetch_current_taskdef.sh $(PROFILE)

# Written by Danilo Assis Nobre dos Santos Silva
# <silva.danilo.nobre@gmail.com>, Mai 2024


OK = \033[30;32mOK\033[m
FAILED = \033[30;31mFAILED\033[m


TRRF		= terraform
init:
	@echo -n Init Terraform ...
	@$(TRRF) init &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)

fmt:
	@echo -n Formatting ...
	@$(TRRF) fmt -recursive &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)

validate:
	@echo -n Validating ...
	@$(TRRF) validate &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)

plan:
	@echo -n Planning ...
	@$(TRRF) plan -out plan.out &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)

apply:
	@echo -n Applying ...
	@$(TRRF) apply plan.out &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)

destroy:
	@echo -n Destroying ...
	@$(TRRF) destroy -auto-approve &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)


clean:
	@echo -n Removing files ...
	@rm -rf .terraform.lock.hcl plan.out .terraform &&\
		echo " $(OK)" || (echo " $(FAILED)"; exit 1;)
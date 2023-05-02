Green=\033[0;32m
BGreen=\033[1;32m
Color_Off=\033[0m

build:
	@docker build -t ubuntu-cloud .
	@echo 'alias cloudbox="docker run -it -v `pwd`:/home/localdir ubuntu-cloud /bin/bash"' >> ~/.zshrc
	@echo "${Green}[+] The Building is done and cloudbox alias is created${Color_Off}"
	@echo "${BGreen}[+] Source your user interface to apply the aliases with (source .bashrc) or (source .zshrc)${Color_Off}"

destroy:
	@docker system prune --all --volumes --force

.PHONY: build destroy

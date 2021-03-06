PROJECT_NAME=crawler
vagrant-up:
	cd ../vagrant && \
	vagrant up && \
	cd ../src
vagrant-halt:
	cd ../vagrant && \
	vagrant halt && \
	cd ../src
vagrant-reload:
	cd ../vagrant && \
	cp Vagrantfile.bak Vagrantfile && \
	sed -i.bak -e "s/VmBoxNameHere/amzn2-$(PROJECT_NAME)/g" Vagrantfile && \
	vagrant reload --provision && \
	cd ../src
vagrant-remake:
	cd ../vagrant && \
	vagrant destroy && \
	cp Vagrantfile.bak Vagrantfile && \
	sed -i.bak -e "s/VmBoxNameHere/amzn2-$(PROJECT_NAME)/g" Vagrantfile && \
	vagrant up && \
	cd ../src
vagrant-ssh:
	cd ../vagrant && \
	vagrant ssh
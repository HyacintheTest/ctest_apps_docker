# Dockerisation de symfony3

* install docker
* install docker compose
* you can add your user to docker group:
	+ `sudo usermod -a -G docker $USER` and reconnect yourself
* pull git repo
* ``cd ctest_apps_docker``
* build and launch your containers with init.sh:
	+ `chmod +x *.sh`
	+ `sudo ./init.sh` This should take some time. Why wouldn't you grab a coffee? ^_^
* download the vendors
	+ `cd ctest_apps`
	+ `composer update` (Let all the default configuration for parameters)
* The symfony application is available at `localhost:3000/app_dev.php` and phpmyadmin at `localhost:4000`
* Connect to the backend container console with `docker exec -i -t ct_back /bin/bash`
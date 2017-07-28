# Dockerisation de symfony3

* install docker
* install docker compose
* install composer
* pull git repo
* ``cd ctest_apps_docker``
* build and launch your containers with init.sh:
	+ `chmod +x *.sh`
	+ `sudo ./init.sh` This should take some time. Why wouldn't you grab a coffee? ^_^
* download the vendors
	+ `cd ctest_apps`
	+ `composer update` (Let all the default configuration for parameters)
* The symfony application is available at `localhost:3000/app_dev.php` and phpmyadmin at `localhost:4000`

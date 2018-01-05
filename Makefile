all:
	docker build -t tanel/goaccess .
	docker image ls tanel/goaccess
	docker run --rm tanel/goaccess --version

.PHONY:	build createrepo

createrep:
	docker run -v $$(pwd)/docs:/tmp/yum createrepo /bin/bash -c "find /tmp/yum -maxdepth 1 -mindepth 1 -type d | xargs -n 1 createrepo"

build:
	docker build -t createrepo .

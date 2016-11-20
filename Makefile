.PHONY:	build createrepo

build:
	docker build -t createrepo .

createrepo:
	docker run -v $$(pwd)/docs:/tmp/yum createrepo createrepo /tmp/yum

.PHONY: all build run version

all: 
	@echo "hi there"

build:
	docker build --no-cache -t h4cc-mkdocs .

run:
	docker run -t -v `pwd`:/mkdocs -P h4cc-mkdocs build

version:
	docker run -t -v `pwd`:/mkdocs -P h4cc-mkdocs --version

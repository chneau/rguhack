.PHONY: run install test clean

# Too lazy to type npm start
run:
	@node .

install:
	npm i

test: clean
	docker run --rm -itv `pwd`:`pwd` -w `pwd` -u 1000 node:alpine npm i && npm start

clean:
	rm -rf node_modules

all: install

install: bin
	@cp ./src/* ./bin

bin: clean
	@mkdir ./bin

clean:
	@rm -rf ./bin

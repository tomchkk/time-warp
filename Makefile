all: clean version

# install: bin
# 	@cp ./src/* ./bin

# bin: clean
# 	@mkdir ./bin

clean:
	@rm -rf ./bin
	@rm ./version

version:
	@git describe --always --first-parent HEAD > ./version

build: user_config files com

user_config:
	@mkdir -p ${user_config}

files: var
	@touch ${errored_path}
	@touch ${excluded_path}

var:
	@mkdir -p ${var}

com:
	@mkdir -p ${queue}

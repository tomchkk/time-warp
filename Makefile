
# all: install

# install: bin
# 	@cp ./src/* ./bin

# bin: clean
# 	@mkdir ./bin

# clean:
	# @rm -rf ./bin

build: config files com

config:
	@mkdir -p ${config}

files: var
	@touch ${errored_path}
	@touch ${excluded_path}

var:
	@mkdir -p ${var}

com:
	@mkdir -p ${queue}

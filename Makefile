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


build: user_config files org_tmp

user_config:
	@mkdir -p ${user_config}

files: var
	@touch ${var}/errored
	@touch ${var}/excluded

var:
	@mkdir -p ${var}

org_tmp:
	@mkdir -p ${org_tmp}

VERSION?=$(shell git describe --always --first-parent HEAD)

all: env version

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :

version: clean
	@echo $(VERSION) > ./version

clean:
	@rm -f ./version


profiles: user_config
	@cp -iR ${resource_dir}/profiles ${user_config}/

user_config:
	@mkdir -p ${user_config}


run: cache_dir log_dir org_tmp

var_dir:
	@mkdir -p ${var_dir}

cache_dir: var_dir
	@mkdir -p ${cache_dir}

log_dir: var_dir
	@mkdir -p ${log_dir}

org_tmp:
	@mkdir -p ${org_tmp}


test: org_tmp

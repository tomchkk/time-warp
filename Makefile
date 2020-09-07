VERSION?=$(shell git describe --always --first-parent HEAD)

all: env version

env:
	@cp -n ${PWD}/.env.example ${PWD}/.env || :

version: clean
	@echo $(VERSION) > ./version

clean:
	@rm -f ./version


run: cache_dir log_dir org_tmp

var_dir:
	@mkdir -p ${var_dir}

cache_dir: var_dir
	@mkdir -p ${cache_dir}

log_dir: var_dir
	@mkdir -p ${log_dir}

org_tmp:
	@mkdir -p ${org_tmp}


profiles: user_config_dir
	@cp -R ${resource_dir}/profiles ${user_config_dir}/

user_config_dir:
	@mkdir -p ${user_config_dir}


anybar: anybar_config_dir
	@cp -R ${resource_dir}/anybar/* ${anybar_config_dir}/

anybar_config_dir:
	@mkdir -p ${anybar_config_dir}


test: org_tmp

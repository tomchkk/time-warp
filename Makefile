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

profiles: user_config
	@cp -iR ${resource_dir}/profiles ${user_config}/

user_config:
	@mkdir -p ${user_config}

test: org_tmp

run: cache_dir log_dir org_tmp

var_dir:
	@mkdir -p ${var_dir}

cache_dir: var_dir
	@mkdir -p ${cache_dir}

log_dir: var_dir
	@mkdir -p ${log_dir}

org_tmp:
	@mkdir -p ${org_tmp}

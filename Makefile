all: clean

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


run: files log_dir org_tmp

var_dir:
	@mkdir -p ${var_dir}

files: var_dir
	@touch ${var_dir}/errored
	@touch ${var_dir}/excluded

log_dir: var_dir
	@mkdir -p ${log_dir}

org_tmp:
	@mkdir -p ${org_tmp}

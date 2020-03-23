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


build: user_config files log_dir org_tmp

user_config:
	@mkdir -p ${user_config}

var_dir:
	@mkdir -p ${var_dir}

files: var_dir
	@touch ${var_dir}/errored
	@touch ${var_dir}/excluded

log_dir: var_dir
	@mkdir -p ${log_dir}

org_tmp:
	@mkdir -p ${org_tmp}

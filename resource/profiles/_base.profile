# _base.profile contains sensible defaults for Time Warp's use of watchexec
# and working with dependencies, which will be used in combination with all
# other defined profiles. Its settings may not be suitable for _all_ use cases.

flags=(
    # Skip loading of version control system (VCS) ignore files. By default,
    # watchexec loads .gitignore files in the current directory (or parent
    # directories) and uses them to populate the ignore list:
    --no-vcs-ignore

    # Skip default ignore statements. By default, watchexec ignores common
    # temporary files for you, for example *.swp, *.pyc, and .DS_Store:
    --no-default-ignore
)

options=(
    # Ignore _system_ files and hidden directories, because we probably don't
    # want to prevent their dependencies from being backed up:
    --ignore="**/Applications/**"
    --ignore="**/Library/**"
    --ignore="**/.*/**"
)

options=(
    # filter for glob pattern
    --filter="**/submodules"
    # ignore nested directories
    --ignore="**/submodules/*"
)

predicates=(
    # the candidate directory must exist
    --directory="."
    # the candidate must have a sibling .gitmodules file
    --file="../.gitmodules"
)

# an inversion filter will also trigger action from the watcher, but the
# matched path value will be switched to that of the target, as if that was
# the path item that triggered the action
inversions=(
    --filter="**/.gitmodules"
    --target="./submodules"
)

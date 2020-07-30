options=(
    # filter for glob pattern
    --filter="**/node_modules"
    # ignore nested directories
    --ignore="**/node_modules/*"
)

predicates=(
    # the candidate directory must exist
    --directory="."
    # the candidate must have a sibling package.json file
    --file="../package.json"
)

# an inversion filter will also trigger action from the watcher, but the
# matched path value will be switched to that of the target, as if that was
# the path item that triggered the action
inversions=(
    --filter="**/package.json"
    --target="./node_modules"
)

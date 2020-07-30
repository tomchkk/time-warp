options=(
    # filter for glob pattern
    --filter="**/vendor"
    # ignore nested directories
    --ignore="**/vendor/*"
)

predicates=(
    # the candidate directory must exist
    --directory="."
    # the candidate must have a sibling composer.json file
    --file="../composer.json"
)

# an inversion filter will also trigger action from the watcher, but the
# matched path value will be switched to that of the target, as if that was
# the path item that triggered the action
inversions=(
    --filter="**/composer.json"
    --target="./vendor"
)

options=(
    # filter for glob pattern
    --filter="**/vendor"
    # ignore nested directories
    --ignore="**/vendor/**/vendor*"
)

predicates=(
    # the candidate directory must exist
    --directory="."
    # the candidate must have a sibling composer.json file
    --file="../composer.json"
)

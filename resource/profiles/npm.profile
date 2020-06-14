options=(
    # filter for glob pattern
    --filter="**/node_modules"
    # ignore nested directories
    --ignore="**/node_modules/**/node_modules/**"
)

predicates=(
    # the candidate directory must exist
    --directory="."
    # the candidate must have a sibling package.json file
    --file="../package.json"
)

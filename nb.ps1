param (
    [string]$branchName
)

# Checkout master branch
git checkout master
git pull

# Create new branch
git checkout -b ('features/' + $branchName)

# Delete all local branches named "feature/*" that have been merged into master

# Write output to console 
# Delete all local branches named "feature/*" that have been merged into master

# Write output to console
git checkout master
git pull
git fetch -p
git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | ForEach-Object {
    $branch = $_.Trim().Split(' ')[0]
    $upstream = $_.Trim().Split(' ')[1]
    if ($upstream -eq "[gone]") {
        git branch -D $branch.replace("refs/heads/", "")
    }
}

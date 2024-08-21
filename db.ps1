# Delete all local branches named "feature/*" that have been merged into master

# Write output to console 
git checkout master
git pull
git branch --merged `
| Where-Object { $_.Trim() -like "features/*" } `
| ForEach-Object { git branch -d $_.Trim() }
git fetch --prune

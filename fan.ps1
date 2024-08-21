git checkout master
git pull
git fetch
try{
    git branch -D features/1-nuget-update
}
catch{
    Write-Host "Branch features/1-nuget-update does not exist"
}

git checkout features/1-nuget-update
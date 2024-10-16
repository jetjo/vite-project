#!/usr/bin/env pwsh
$LibRelPath="../vitelib/"
$Branch="main"
$RemoteRepo="origin"
$GitDir=(Get-Item ($LibRelPath | Resolve-Path)).FullName
$GitDir
git -C $GitDir switch $Branch
# git -C $GitDir pull $RemoteRepo
git -C $GitDir fetch --all
git -C $GitDir reset --hard $RemoteRepo/$Branch
npm unlink $LibRelPath
npm link $LibRelPath

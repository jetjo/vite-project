#!/usr/bin/env pwsh
$LibRelPath="../vitelib/"
$Branch="main"
$RemoteRepo="origin"
$GitDir=(Get-Item ($LibRelPath | Resolve-Path)).FullName
$GitDir
git -C $GitDir switch $Branch
git -C $GitDir pull $RemoteRepo
# npm unlink $LibRelPath
# npm link $LibRelPath
# 测试
# 测试

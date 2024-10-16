#!/usr/bin/env pwsh
$LibRelPath="../vitelib/"
$Branch="origin/main"
$GitDir=(Get-Item ($LibRelPath | Resolve-Path)).FullName
$GitDir
git -C $GitDir pull $Branch
# npm unlink $LibRelPath
# npm link $LibRelPath

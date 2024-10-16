#!/usr/bin/env pwsh
$LibRelPath="../vitelib/"
$GitDir=(Get-Item ($LibRelPath | Resolve-Path)).FullName
$GitDir
git -C $GitDir pull
# npm unlink $LibRelPath
# npm link $LibRelPath

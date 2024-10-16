#!/usr/bin/env pwsh
$LibRelPath="../vitelib/"
$GitDir=(Get-Item ($LibRelPath | Resolve-Path)).FullName
$GitDir
git -C $GitDir status
npm unlink $LibRelPath
npm link $LibRelPath

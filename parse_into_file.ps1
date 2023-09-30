New-Item -Path "list.m3u" -ErrorAction Ignore -WarningAction Continue

"#EXTM3U" | Out-File -FilePath "list.m3u"

"" | Out-File -FilePath "list.m3u" -Append

$objs = Get-ChildItem -Path "musics" -File -Name
$str = $objs | ForEach-Object { ".\musics\$_" }
$str | Out-File -FilePath "list.m3u" -Append



$war = 'C:\Users\SHARVESH\OneDrive\Desktop\project\SmartHostel_VSCode_Project\SmartHostel\target\smart-hostel.war'
$tomcat = 'C:\Tools\apache-tomcat-10.1.61\webapps'
$dest = Join-Path $tomcat 'smart-hostel'
$warCopy = Join-Path $tomcat 'smart-hostel.war'

if (-not (Test-Path $war)) {
    throw "WAR not found: $war"
}

Copy-Item $war $warCopy -Force
if (Test-Path $dest) {
    Remove-Item -Recurse -Force $dest
}
New-Item -ItemType Directory -Force -Path $dest | Out-Null
[System.IO.Compression.ZipFile]::ExtractToDirectory($warCopy, $dest)

Get-ChildItem (Join-Path $dest 'WEB-INF\classes\com\hostel') | Select-Object Name

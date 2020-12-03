$modules = @("PSFramework", "PSModuleDevelopment", "dbatools")

foreach ($module in $modules) {
    Write-Host "Installing $module" -ForegroundColor Cyan
    if (-not (Get-Module -ListAvailable | Where-Object {$_.Name -eq $module})) {Install-Module $module -Force -SkipPublisherCheck}
    Import-Module $module -Force -PassThru
}
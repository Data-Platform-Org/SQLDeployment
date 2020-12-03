$modules = @("PSFramework", "PSModuleDevelopment", "dbatools")

foreach ($module in $modules) {
    Write-Host "Installing $module" -ForegroundColor Cyan
    Install-Module $module -Force -Scope CurrentUser -SkipPublisherCheck
    Import-Module $module -Force -PassThru
}
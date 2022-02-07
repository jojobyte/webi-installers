#!/usr/bin/env pwsh

Describe "Verify webi installs correctly" {
    It "installed webi" {
        # Test-Path resultsfile.log | Should -Be $true
        # webi \
        # & "$Env:USERPROFILE\.local\bin\webi-pwsh.ps1" "$exename"
        curl.exe -A "MS" https://webinstall.dev/webi | powershell
    }
}

#!/usr/bin/env pwsh

Describe "Verify webi installs correctly" {
    It "installed webi" {
        curl.exe -A "MS" https://webinstall.dev/webi | powershell
    }
}

x=$(curl -s http://169.254.169.254/)
if [ $? -gt 0 ]; then
        echo '[ERROR] Command not valid outside EC2 instance. Please run this command within a running EC2 instance.'
        exit 1
fi

$mac = (Invoke-WebRequest -Uri http://169.254.169.254/latest/meta-data/mac -UseBasicParsing).Content
$sg = (Invoke-WebRequest -Uri http://169.254.169.254/latest/meta-data/network/interfaces/macs/$mac/security-group-ids -UseBasicParsing).Content
$subnet = (Invoke-WebRequest -Uri http://169.254.169.254/latest/meta-data/network/interfaces/macs/$mac/subnet-id -UseBasicParsing).Content

Write-Host "writing to .kithcen.local.yml with $sg on subnet $subnet_id"

$entries = "
---
driver:
    security-group-ids: $sg
    subnet-id: $subnet
"    
Set-Content -Path .\\.kitchen.local.yml $entries

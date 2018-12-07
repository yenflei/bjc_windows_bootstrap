# bjc_windows_bootstrap

## Description
This cookbook uses kitchen to stand up a Windows instance in AWS for a student to use in the Chef InSpec Compliance Training.
It is based on Anthony Grees' cookbook https://github.com/anthonygrees/bjc_windows_bootstrap

## Requirements
The only requirement is you need to run prekitchen.ps1 script on the BJC (windows workstation) before using kitchen create/converge.  The script does two things: 

#### 1. Writes AWS security group and subnet id to .kitchen.local.yml
driver:
  security_group_ids: sg-99x999x99
  subnet_id: subnet-9x99999
  
#### 2. Reset ORG validator on the Chef server and update the private key (validator.pem) under recipes.


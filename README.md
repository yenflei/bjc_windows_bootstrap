# bjc_windows_bootstrap

## Description
This cookbook uses kitchen to stand up a Windows instance in AWS for a student to use in the Chef InSpec Compliance Training.
It is based on Anthony Grees' cookbook https://github.com/anthonygrees/bjc_windows_bootstrap

## Requirements
There are 2 items that need to be updated before the Cookbook can run.

### 1. Edit .kitchen.yml
Update the AWS SG and Subnet

```bash
  security_group_ids: sg-99x999x99
  subnet_id: subnet-9x999999
```

### 2. Reset validator.pem
Log on to the Chef Server in the BJC and reset the ORG validator and update the file under recipes.
Future:  use validator-less method to bootstrap client

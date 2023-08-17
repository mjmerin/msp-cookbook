# Merin System Provisioner (MSP) CHANGELOG

This file is used to list changes made in each version of the msp cookbook.


## [0.2.0] - 2023-08-16
### Added
- Added Ubuntu 22.04 LTS and start using arm64 as my dev machine is now a M1/M2 Macbook Pro. 
- Added licensing info to files. 

### Changed
- Update to Chef 18.
- Move from Berksfile to Policyfile usage. 
- Clean up recipes and integration tests to support both Ubuntu and macOS. 

### Removed
- Decrease the number of packages installed to really make sure this cookbook is just a base cookbook. 
- Remove support for anything under Ubuntu 18. 

## [0.1.0] - 2019-03-15
### Added
- Initial commit.
- macOS High Sierra support, including basic Chef Spec and Integration tests. 
- `git` recipe installing `.gitconfig` file. 


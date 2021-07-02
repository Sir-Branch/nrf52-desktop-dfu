# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
## [1.2.0] - 2020-07-02
### Added
- Added retry logic on failed bin file checksum 

## [1.1.0] - 2020-06-13
### Changed
- Changed default MTU size to 20.

### Fixed 
- Brought in missing <string> include in NrfDfuServer.cpp
- Misc formatting and spelling

## [1.0.1] - 2020-08-17
### Fixed 
- crc.h was being included in the NrfDfuserver header instead of the source file. This caused issues when consuming the library externally (crc.h is not part of the distribution).

## [1.0.0] - 2020-08-14
- Initial release.
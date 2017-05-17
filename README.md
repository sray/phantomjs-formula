# Phantomjs - Formula

This salt formula automates installing one or more phantomjs versions and setting one as the default (by placing a symlink in /usr/bin).

## Supported Operating Systems

This module has been tested on Debian 8, but may as well work on any kind of Unix-/Linux.

## Usage

### Available states
`phantomjs`
* creates a salt state for each version listed in the pillar under `phantomjs.versions`
* configures one phantomjs version set in the pillar as `phantomjs.default` as the system-wide default

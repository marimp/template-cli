# CLI
TODO Description

### Download code and Configure

Download source Code
```
git clone http://file.w3.bluemix.net/maestro/maestro-latest.gem
```
open lib/configuration.rb and change as follows:
```
CLI = 'cli'
NAME = 'CLI_NAME'
VERSION = '0.0.1'
SUMMARY = 'CLI_SUMMARY'
DESCRIPTION = 'CLI_DESCRIPTION'
DATE = '2016-05-21'
```

### Installation
You should have Ruby installed on your system. Then you can run:
```
git clone http://file.w3.bluemix.net/maestro/maestro-latest.gem
gem build cli.gemspec
gem install CLI_NAME-0.0.1.gem
```

### Usage
usages:
```
CLI_SUMMARY (0.0.1)
CLI_DESCRIPTION

Usage:   cli [options]
where [options] are:
  -s, --string-param=<s>    description
  -b, --boolean-param       description
  --debug                   Enable debug log
```

### Scenario

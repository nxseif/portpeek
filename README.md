# Portpeek

A small Bash TCP port scanner for Linux.

## Features

* Scan a range of TCP ports
* Detect open and closed ports
* Supports IP addresses and hostnames
* Optional `open` mode to show only open ports
* Simple command-line interface
* Built-in help
* built-in version 
## Usage

```bash
./portpeek.sh <host> <start> <end> [open]
./portpeek.sh help
./portpeek.sh version

```

## Examples

Scan ports 1 to 1024:

```bash
./portpeek.sh localhost 1 1024
```

Show only open ports:

```bash
./portpeek.sh localhost 1 1024 open
```

Show help:

```bash
./portpeek.sh --help
```

## Requirements

* Linux
* Bash
* Netcat (`nc`)

## Notes
enjoy 

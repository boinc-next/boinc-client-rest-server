# RESTful API for BOINC client

[![Build Status](https://img.shields.io/travis/skybon/boinc-client-rest-shim.svg)](https://travis-ci.org/skybon/boinc-client-rest-shim) [![Docker Pulls](https://img.shields.io/docker/pulls/skybon/boinc-client-rest-shim.svg)](https://hub.docker.com/r/skybon/boinc-client-rest-shim) [![Docker Stars](https://img.shields.io/docker/stars/skybon/boinc-client-rest-shim.svg)](https://hub.docker.com/r/skybon/boinc-client-rest-shim)

Access your BOINC client via HTTP. Implements the unofficial [BOINC RPC spec](https://github.com/skybon/boinc-undocumented).

## Installation and Running

### Docker (recommended)

Docker image containing the Shim and runnable out of the box is available.

#### Installation

```
$ docker pull skybon/boinc-client-rest-shim
```

#### Running

```
$ docker run --rm --net="host" skybon/boinc-client-rest-shim --shimaddr <shim server listen address, default is :15678>
```

### Manual

#### Installation

```
$ make get-deps
$ make build
```

#### Running

```
$ ./build/boinc-client-rest-shim
```

## Using the API

```
$ curl -d 'json={"host": <BOINC client RPC address>, "pwd": "<BOINC client RPC key>"}' localhost:15678/0.1/<entrypoint>
```

## Available entrypoints

- `/tryauth` - test authentication.
- `/projects` - view all projects known to BOINC client.
- `/messages` - show BOINC client logs.
- `/acctmgr` - poll account manager manipulation status.
- `/acctmgr/info` - show information about current account manager.
- `/quit` - shut down the shim.

## License

This program is free software; you can redistribute it and/or modify it under the terms of the GNU Affero General Public License version 3, as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

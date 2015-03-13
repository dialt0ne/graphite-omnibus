# Graphite Omnibus

This is an [fpm-cookery](https://github.com/bernd/fpm-cookery) Omnibus recipe that builds a Python interpreter and then packages Graphite and its dependencies into it.

## Motivation

[This whinge](https://twitter.com/supersheep/status/509332504269299712).

Also, if rolling out a federated graphite cluster, its a good idea to have the whole cluster be consistent.

## Note

This is ~~extremely alpha~~ lightly tested, and should be improved. For example, the following would be good:

- ~~support for systems other than Ubuntu 12.04~~ added support for CentOS6, Ubuntu 14.04 build should work too
- ~~better init scripts~~, support systemd + upstart
- a build lab using Docker or Vagrant or something
- hosting packages for people to make life easier
- ~~embed gunicorn so the webapp can run without any other dependencies~~
- ~~move config to /etc/graphite~~ (uses standard /opt/graphite locations)
- ~~postinstall scripts should make the database..?~~ included manual instructions

Also added:

- [MANUAL_CONFIG.txt](MANUAL_CONFIG.txt) for configuring /opt/graphite by hand (should normally be done via config mgmt)
- upgrade to python 2.7.9
- stopped running daemons as root
- included [carbonate](https://github.com/jssjr/carbonate) for managing the graphite cluster
- [graphite_omnibus.conf](graphite_omnibus.conf) - nginx config file if you are giving the URL to users

## Building

Install fpm-cookery, and build the package with:

    fpm-cook package graphite-omnibus.rb

NOTE: Since the omnibus package needs to write to /opt and /etc/init.d, you will need to run as root :-(

## Graphite versions

This builds ~~straight off HEAD of master~~ off the tag 0.9.13-pre1 on the three Graphite projects
(Carbon, graphite-web, Whisper).

## Contributing

All pull requests welcome. This was just a quick hack to satisfy myself it could be done easily.


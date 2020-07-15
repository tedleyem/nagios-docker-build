# Docker-Nagios

Docker image for Nagios

Nagios Core 4.4.5 running on Ubuntu 16.04 LTS with NagiosGraph & NRPE

### Configurations
Nagios Configuration lives in /opt/nagios/etc
NagiosGraph configuration lives in /opt/nagiosgraph/etc

### Running
Run with the example configuration with the following:

```sh
docker run --privileged --name nagios -v /:/overlay/opt -p 80:80 -p 5666:5666 tmeralus/nagios:latest
```
roles/ansible-role-nagios-docker/configs/objects/
#### Credentials

The default credentials for the web interface is `nagiosadmin` / `nagios`

### Extra Plugins

* Nagios nrpe [<http://exchange.nagios.org/directory/Addons/Monitoring-Agents/NRPE--2D-Nagios-Remote-Plugin-Executor/details>]
* Nagiosgraph [<http://exchange.nagios.org/directory/Addons/Graphing-and-Trending/nagiosgraph/details>]
* Nagios-Docker-Plugins -  custom plugins for checking docker containers forked from  timdaman /
check_docker   [<https://github.com/tmeralus/check_docker>]
* TM-Nagios-Plugins -  custom plugins I've created [<https://github.com/tmeralus/nagios-plugins>]
* WL-Nagios-Plugins -  custom plugins from William Leibzon [<https://github.com/willixix/WL-NagiosPlugins>]
* JE-Nagios-Plugins -  custom plugins from Justin Ellison [<https://github.com/justintime/nagios-plugins>]

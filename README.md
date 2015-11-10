ISPConfig OpenVZ (vserver) veth
=========================


# REQUIREMENTS

As default, all veth use vmbr0 bridge (file: /usr/local/ispconfig/interface/web/vm/templates/openvz-veth.conf.tpl & /usr/local/ispconfig/interface/lib/plugins/vm_openvz_plugin.inc.php)

OpenVZ must have correct automatic bridging configuration (see: https://wiki.openvz.org/Virtual_Ethernet_device#Automating_the_bridge)


# INSTALLATION (as root)

```
git clone https://github.com/alexalouit/ISPConfig-OpenVZ-veth.git
cd ISPConfig-OpenVZ-veth
php -q install.php
```

Add a macaddr field in "OpenVZ IP address" page.

If is empty, use a clasical venet, if is set, create a veth and configure it (see note)


## COMPATIBILITY

ISPConfig (select version in branche)


## NOTES


If you are in multiple server environnement, install it on all vservers and on the master (web panel)

Adjust your network configuration in /usr/local/ispconfig/server/plugins-available/openvz_plugin.inc.php file (for OVH failover configuration, just uncomment)


## MANUAL INSTALLATION

- patch ispconfig:
```
cp ispconfig.patch /usr/local/ispconfig/ispconfig.patch
cd /usr/local/ispconfig
patch -p3 < ./ispconfig.patch
rm ./ispconfig.patch
```

- sql quueries:
```
ALTER TABLE `openvz_ip` ADD `macaddr` varchar(20) DEFAULT NULL;
ALTER TABLE `openvz_vm` ADD `macaddr` varchar(20) DEFAULT NULL;
```
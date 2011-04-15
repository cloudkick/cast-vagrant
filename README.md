Cast Vagrant development box
===========================

This is a development box for the Vast project.

Changes
=======

* 15.04.2011 - v0.2.0
 - Upgrade included node version to 0.4.6
 - Upgrade included npm version to 1.0.0 rc-8
 - Include node-inspector module
 - Forward new ports (5858 - node debugger, 8080 - node-inspector)
 - runit instance which monitors Cast services directory is now started as
   vagrant user instead of root
 - Cast vash completion library is now automatically sourced on login

* 29.03.2011 - v0.1.1
  - Add npm recipe
  - Set NODE_PATH environment variable to /data/cast/lib
  - create Cast root directory (/opt/cast) on provisioning
  - Start runsvdir on the Cast services directory (/opt/cast/services-enabled)
  - Update the message of the day file

* 23.03.2011 - v0.1.0
  - Initial release

Requirements
============

- Virtualbox >= 4.0 ([http://www.virtualbox.org/](http://www.virtualbox.org/))
- Vagrant >= 0.7 ([http://vagrantup.comx/](http://vagrantup.com))

Box installation / setup
=======================

1. Download and add Cast box
    `vagrant box add cast /local/path/the.box http://path.to/the.box`

2. Create and change to a Cast box root directory
    `mkdir ~/vagrant/cast ; cd ~/vagrant/cast`

3. Initialize Cast box inside this directory
    `vagrant init cast`

4. Start the VM
   `vagrant up`

Usage
=====

* `vagrant suspend` - save the snapshot and suspend the VM
* `vagrant resume` - resume from a saved snapshot
* `vagrant halt` - turn off the VM (current state is not saved)
* `vagrant up` - starts the stopped VM
* `vagrant reload` - re-run the provisioner. Useful if you edit some cookbook
  settings and you want the provision to re-evaluate all the recipes again.

Contact / Help
==============

Mailing list: https://groups.google.com/forum/#!forum/cast-dev
IRC: #cast-project @ freenode

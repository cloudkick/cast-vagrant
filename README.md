Cast Vagrant development box
===========================

This is a development box for the Vast project.

Requirements
============

- Virtualbox >= 4.0
- Vagrant >= 0.7

Installation / setup
====================

vagrant box add cast /local/path/the.box http://path.to/the.box
cd ~/vagrant/cast
vagrant init cast
vagrant up

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

Mailing list:
IRC: #cast-project @ freenode

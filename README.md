Cast Vagrant development box
===========================

This is a development box for the Vast project.

Changes
=======

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


# ZenifyWP devenv #

- Author : Jimmy MG Lim <mirageglobe@gmail.com>
- License : Apache 2.0

Zenifywp dev env is a vagrant based development enviroment for wordpress. its a simple to use, preconfigured ubuntubox that loads up a fully working latest copy of wordpress. as a developer, all that is needed is your theme file cloned into vmsharesource/themes. a few samples can be seen in there already.

# TOUSE

Requirements:

- Vagrant 1.9+
- Virtualbox 5.0+
- Git 2.7+

To setup:

> git clone ...... <this repo>

> cd <this repo>/vmsharesource/themes

you should clone your theme repo (such as zenifywp) into themes and it should look like the following

- /vmsharesource/themes/zenifywp
- /vmsharesource/themes/twentytwelve
- ...

To start:

> $ sh vagrant.run.sh

If you update the vmbootstrap.sh file, you can refresh the vagrantvm by:

> $ sh vagrant.refresh.sh

# NOTES

## installation fails with virtual box guest additions

if installation fails for vagrant, vb guest plugin will need to be installed.
ref: https://stackoverflow.com/questions/22717428/vagrant-error-failed-to-mount-folders-in-linux-guest

$ vagrant plugin install vagrant-vbguest

and then reload

$ sh vagrant.refresh.sh
$ sh vagrant.run.sh

# TODO

- update to use debian stretch box - curl need to be installed and mariadb keys need to be changed
- [done] copy and sync mysql login data - http://serverfault.com/questions/103412/how-to-change-my-mysql-root-password-back-to-empty/103423#103423
- [done] copy and install wordpress
- [done] sync the folder from host to guest


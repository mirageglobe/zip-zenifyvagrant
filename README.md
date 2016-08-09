
Zenify WP Dev
=====================

- Author : Jimmy MG Lim <mirageglobe@gmail.com>
- Company : Dracoturtur
- License : Apache 2.0

Zenifywordpress dev env is a vagrant based development enviroment for wordpress. 

TOUSE
---------------------

To setup:

> git clone ...... <this repo>

> cd <this repo>/vmsharesource/themes

you should clone your theme repo (such as zenifywordpress) into themes and it should look like the following

- /vmsharesource/themes/zenifywordpress
- /vmsharesource/themes/twentytwelve
- ...

To start:

> $bash vagrant.run.sh

If you update the vmbootstrap.sh file, you can refresh the vagrantvm by:

> $bash vagrant.refresh.sh


TODO
---------------------

- [done] copy and sync mysql login data - http://serverfault.com/questions/103412/how-to-change-my-mysql-root-password-back-to-empty/103423#103423
- [done] copy and install wordpress
- copy and install wordpress cli
- [done] sync the folder from host to guest


# front end scaffolding

starting a new static project? save time using this marvelous scaffolding!

after cloning this repository, run `make install` to grab all dependencies.
<br>
then run the following commands, each in a seperate terminal:

```shell
# watch over file changes
make watch

# start a web server
make run
```

check out available tasks with:

```shell
make help
```

**using Windows?**

worry not! install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/), then run:

```shell
vagrant up
```

this will download and run [Ubuntu](http://www.ubuntu.com/server) just for this project, so you can hack like a unix developer, then you can enter Ubuntu to start playing with the project:

```shell
vagrant ssh
cd /vagrant
```

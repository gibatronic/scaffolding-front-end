# front end scaffolding

starting a new static project? save time using this marvelous scaffolding!

after cloning this repository, run `make install` to grab all dependencies.

then run the following commands, each in a seperate terminal:

```shell
# watch over file changes
make watch
```

```shell
# start a web server
make run

# you may pass a different port than the 3000 default
make run PORT=8080
```

```shell
# ask for help to see all available tasks
make help
```

**using Windows?**

worry not! install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/), then run:

```shell
vagrant up
```

this will download and run [Ubuntu](http://www.ubuntu.com/server) just for this project, so you can hack like a unix developer.

# front end scaffolding

Starting a new static project? Save time using this marvelous scaffolding!
<br>
It uses `make` as task runner and it's ready for above and below the fold styles.

**Project stack:**

* [Make](https://www.gnu.org/software/make/) as a task runner.
* [SASS](http://sass-lang.com/) and [Bourbon](http://bourbon.io/), with [above and below the fold](https://en.wikipedia.org/wiki/Above_the_fold#In_web_design) styles.
* [webpack](https://webpack.github.io/) to sew all js modules together.
* [Mustache](https://mustache.github.io/) for gluing partials together.

## Instalation

1. Get [Yeoman](http://yeoman.io/) and other required tools:
   ```shell
   npm install --global yo bower grunt-cli gulp
   ```

2. Grab the generator:
   ```shell
   npm install --global generator-scaffolding-front-end
   ```

3. Create and enter your project's directory:
   ```shell
   mkdir my-awesome-project
   cd my-awesome-project
   ```

4. Generate the scaffolding:
   ```shell
   yo scaffolding-front-end
   ```

Voilà! You're ready to start hacking.

## Usage

After getting a fresh copy run `make install` to grab all dependencies.
<br>
Then check out available tasks with `make help`.

**Using Windows?** [Check this guide](README-WINDOWS.md).

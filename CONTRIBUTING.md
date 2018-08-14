Your contribution flow should look like:

```sh
$ git clone git+ssh://github.com/your-fork/oracle-util-millis.git
$ cd oracle-util-millis
$ git checkout -b name-for-your-feature-or-fix
$ git commit # your changes
$ git push -u origin name-for-your-feature-or-fix
```

Once your feature branch is synchronized to your fork on GitHub, you can use the web interface to create a pull request agains the "master" branch of the ORACLE-UTIL-MILLIS repository.

## Stay Synchronized

Prior to submitting your pull request, make sure your local copy is synchronized. In fact, it would be wise to make sure the synchronization is done prior to finishing your feature:

```sh
$ git remote add upstream https://github.com/marlonlom/oracle-util-millis.git
$ git checkout master
$ git pull upstream master
$ git checkout name-for-your-feature-or-fix
$ git merge master
$ git push
```

## General Guidelines

+ Follow the code style:
  + spaces for tabs
  + 4 spaces per tab
  + respect lower case and upper case for reserved words in head and body package contents.
+ Add an example if your have added a completely new feature
+ Make sure unit tests pass
+ Add/update unit tests to cover your change

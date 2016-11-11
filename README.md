# OASP/Devonfw Atom editor ("IDE") settings & packages

## Introduction

Web development in general, not just development with OASP4JS & Devon4Sencha, is typically done with other editors / IDE's than the default Eclipse which comes with the OASP IDE / Devonfw Distribution. Front-end developers are typically not very content with the features and user-experience of Eclipse for web development. This small project is intended to provide a default configuration for the Atom editor, so we can provision an alternative environment more suitable to the needs, tastes and whims of the wevbdev.

This config can be used stand-alone or, alternatively, could be used in next versions of the OASP IDE / Devonfw Dist alongside Eclipse.

## Prerequisites

You can use either the [different platform specific installers](https://github.com/atom/atom/releases/tag/v1.12.1) or the compressed binaries which can be used without "installing". Take a look at the [Linux version (_tar.gz_ file)](https://github.com/atom/atom/releases/download/v1.12.1/atom-amd64.tar.gz) or the
[Windows version (_zip_ file)](https://github.com/atom/atom/releases/download/v1.12.1/atom-windows.zip).


See the file [_config/packages.lst_ for the list of included packages](https://raw.githubusercontent.com/ivanderk/oasp-atom-ide/master/config/packages.lst). If you want to add a package, install it in your own installation, run the script _backuppackages.(bat|sh)_ and commit / push the resulting file _config/packages.lst_.


## Configure Atom

Make a clone of this repository to you local hard drive. Modify the file _env.bat_ or _env.sh_ according to your needs. There are two environment variables which need to be assigned a value:

- `ATOM_HOME`: needs to point to the _config_ directory in the cloned repository.
- `ATOM_BIN`: needs to point to the directory containing the Atom binary files.

After this you can install the required packages by running the command:

    restorepackages.(bat|sh)

after which Atom will be ready to run. You can start it by running the command:

    runatom.(bat|sh)


## Install node packages

In order to use the packages in Atom you need the corresponding tool chain installed: tools like Typescript etc. All relevant tools can be installed with the following command (note that Node.js must be installed; a version of node is avaiable in the OASP IDE / Devonfw Dist).

    npm install -g babel-cli typescript jshint

Note that this installs the node modules _globally_ on the system, a practice which is recommended against by some projects (Babel in particular). Install the packages _locally_ in a project directory if that is more to your liking.

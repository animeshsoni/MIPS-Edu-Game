# Unit Test Scripts Examples

Author: Hanzhang Bai and Sai Cao

Updated on 15 March 2019

Licensed under MIT licence


## Writing your first test case
1. Export your test class, function, or varibles in the file. 

Exmpale: 

```javascript
class Foo {
}
module.exports=Foo; 
```

2. In the test script  

```javascript
var Foo= require(path to your test class): 
```

3. Start test in the project index with `npm test` 

-> You can modify the scirpt attribute in `package.json` to change script run by `npm test`. 

# Getting Started on Mocha Unit Test

Please notice: Even though you can debug it on any platform and using any browsers, I suggest you use `Google Chrome` with automatic update enabled. For the backend, use `mocha` for now unless otherwise stated.

We also need to fix a problem introduced by `Safari` on both iOS and all browsers on iOS as well since Apple does not allow any customised rendering engine(aka kernel)

I suggest you run a system check before start debugging this project. I will update these scripts when dependencies changes.

### Install on Windows 10

Windows 10 can only be installed through GUI only, no script will be provided for now. Contact us if you need further assistance.

### Install on Ubuntu 18.04 LTS and Debian 9
Ubuntu 18.04 LTS is officially supported. Since Ubuntu is derived from Debian, I allow Debian Linux distribution to be installed as well.

Use the installation script and run with `sudo ./install.sh` unless you are root

If you are root, run with `./install.sh` instead

### Install on CentOS 7 and RHEL 7
Please note: I have not tested on these platforms. Even though it should be working correctly, but I do suggest send us an issue on our issue tracker in case any unintended behaviours happened.

Use the installation script and run with `sudo ./install.sh` unless you are root

If you are root, run with `./install.sh` instead

### Install on macOS Mojave
Please note: I have not tested on macOS just yet since I do not own a MacBook. Even though it should be working correctly, but I do suggest send us an issue on our issue tracker in case any unintended behaviours happened.

Use the installation script and run with `sudo ./install.sh` unless you are root

If you are root, run with `./install.sh` instead

Unlike Linux OSes, it will install `brew` instead as a pre-requisite. 

# Debugging my C++ programs

Definitely run `debug.sh` first, since that's where my unit tests are.

### Machine setup

Ubuntu 18.04 LTS with default `g++`
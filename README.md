<snippet>
  <content><![CDATA[
# ${1:DevOps Tools Installation for Lab}

This project consists of installing devops tools for test environment to train you on the use of this tool or either to make an environment close to that of production

## Prerequisite

To use this project, you need :

* VirtualBox 6.1 or more
* Vagrant 2.2.18 or more
* Git

## Installation

Download source code with git or any method
```
    git clone https://github.com/CheickOumarDiaby/vagrant-environment.git
```
Choose your project (example jenkins) and run your installtion
```
    cd jenkins/ && vagrant up --provision
```
Find the ip address and the initiating password at the end of the `vagrant up --provision` command output


## Usage

For run :
```
    vagrant up
```
For stop :
```
    vagrant halt
```
For connected in SSH:
```
    vagrant ssh
```
For restart :
```
    vagrant reload
```
For delete:
```
    vagrant destroy -f
```

## Credits

Cheick Oumar DIABY <diabycheickoumar@outlook.com>

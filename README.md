# My macOSa

This repo is for those of you who'd like to customize your [macOSa](https://github.com/rockholla/macosa) install.

To begin, [fork this repo](https://help.github.com/articles/fork-a-repo/) and begin building your customizations

## `encrypt`

This is a little wrapper around `ansible-vault` to help you encrypt sensitive var files and other data in this directory

## `vars`

This is where your custom Ansible vars go, and you can have any number of different var files here

## `templates`

A place for your Ansible Jinja2 templates, you can reference this location in any variable, task, etc. like `user/templates/yourfile.j2`

## `files`

A place for your Ansible files, you can reference this location in any variables like `user/files/yourfile.plist`.  Additionally, there are some more structured places for particular things in this directory:

## `blocks`

* `dotfiles`: Content in files here will be appended to files in `~/` of the same name.  If the file doesn't already exist at `~/`, the file will be created with the content.

## `reminders`

You can place files in this directory to remind you of certain things to do before and after running macOSa.  The following file names will be recognized:

* `before`: a text file with some reminders for you before any macOSa run
* `after`: a text file with some reminders for you after any macOSa run

## `bin`

Any custom binaries/executables that you'd like to include.  This directory (`~/.macosa/user/bin`) will be added to your PATH.

## `tasks`

* `pre`: all `.yml` files in this directory will be executed as Ansible pre_tasks, in the order they appear in the directory
* `post`: all `.yml` files in this directory will be executed after the default macOSa Ansible provisioning, in the order they appear in the directory

## `inventory`

Any files in here will be added to the Ansible macOSa inventory, and should be in the form of a typical Ansible inventory file

## `playbooks`

Any `*.yml` files in this directory will be run as additional plays after the primary macOSa play

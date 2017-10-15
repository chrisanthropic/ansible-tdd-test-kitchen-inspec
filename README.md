[![Build Status](https://travis-ci.org/chrisanthropic/ansible-tdd-test-kitchen-inspec.svg?branch=master)](https://travis-ci.org/chrisanthropic/ansible-tdd-test-kitchen-inspec.svg?branch=master)

# What
A stub of a repo to demonstrate how to use test-kitchen, docker, inspec, and travis-ci to test your Ansible roles.

## Getting Started
- git clone the repo
- modify your variables

### Dependencies
- ansible

### Variables
Default Variables are defined in `roles/defaults/main.yml`. You can copy the file to `roles/vars/main.yml` and anything there will override what's in the defaults. The `.gitignore` in this repo ignores `roles/vars/main.yml` to prevent you from accidentally commiting it to a public repo.

- copy `roles/defaults/main.yml` to `roles/vars/main.yml`
    - modify as needed

## TESTING
### Dependencies
- chef
- bundler

### Steps
- git clone the repo
- `bundle install`
- `bundle exec kitchen create`
- `bundle exec kitchen converge`
- `bundle exec kitchen verify`
- `bundle exec kitchen destroy`




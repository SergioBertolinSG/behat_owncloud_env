# Environment for behat development for ownCloud.

It uses vagrant, virtualbox and ansible to create the environment.

Steps to use this environment:

Previous requirements:

Install virtualbox: https://www.virtualbox.org/

Install vagrant https://www.vagrantup.com/downloads.html

Install ansible http://docs.ansible.com/ansible/intro_installation.html


1. Clone this repository.

2. Do vagrant up.

3. Wait for the ansible provisioning.

4. Do vagrant ssh to access the machine.

5. Install ownCloud using install_master_owncloud.sh.

6. Run integration tests:
   - go to /var/www/html/master_(TODAYDATE)/tests/integration
   - do sudo -u www-data ./run.sh


   

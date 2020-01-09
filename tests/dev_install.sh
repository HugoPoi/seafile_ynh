#!/bin/bash
# Install current git version of seafile yunohost inside vagrant vm
#
sudo yunohost tools postinstall -d ynh.local -p AdminPassword
sudo yunohost domain add seafile.ynh.local
sudo yunohost user create test --firstname First --lastname User --mail test@ynh.local --mailbox-quota 0 --password FirstUserPass
sudo yunohost user create test2 --firstname Second --lastname User --mail test2@ynh.local --mailbox-quota 0 --password SecondUserPass
sudo yunohost app install /vagrant --force --args "domain=seafile.ynh.local&path=/seafile&admin=test&admin_password=SeafileAdminPassword" --label Seafile


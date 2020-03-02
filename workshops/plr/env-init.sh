#!/usr/bin/bash
yum -y install plr11
yum -y install gdal.x86_64 gdal-devel.x86_64 gdal-libs.x86_64
yum -y install proj.x86_64 proj-devel.x86_64

systemctl enable postgresql-11
systemctl start postgresql-11

R CMD javareconf
# nothing for now

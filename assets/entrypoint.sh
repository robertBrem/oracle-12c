#!/usr/bin/env bash

set -e
source /assets/colorecho

if [ ! -d "/opt/oracle/app/product/12.1.0/dbhome_1" ]; then
	echo_yellow "Database is not installed. Installing..."
	/assets/install.sh
fi

chown -R oracle:oinstall /opt/oracle/dpdump
chmod 777 /opt/oracle/dpdump

su oracle -c "/assets/entrypoint_oracle.sh"

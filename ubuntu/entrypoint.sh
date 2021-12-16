#!/bin/bash

service cron start
# service ssh start

exec /usr/sbin/sshd -D

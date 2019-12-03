#!/bin/bash
ssh root@106.15.46.158 > /dev/null 2>&1 << eeooff
# 构建后端
cd /root/source/docker_ci
docker-compose

eeooff
echo done!


ssh root@106.15.46.158 "df -h"
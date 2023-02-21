#! /bin/bash
echo "重启Docker容器名称为：koishi">>/root/koi/restart.log
docker restart koishi
echo "重启命令的执行状态："$?>>/root/koi/restart.log
if [ $? -eq 0 ]; then
    echo "执行成功！">> /root/koi/restart.log
else
    echo "执行失败！">> /root/koi/restart.log
    exit
fi
echo "重启Docker容器：koishi完毕！输出日志在/root/koi/restart.log中">> /root/koi/restart.log
#!/bin/bash
#testing the read command
echo -n "服务器ip地址 ipaddress:" ---：
read ipaddress
echo -n "登录账户 user:" ---：
read user
echo -n "登录方式?(pass|pem) type1:" ---：
read type1
if [[ $type1 == "pem" ]];then
	echo -n "秘钥地址 path:" ---：
	read path
	ssh -i $path $user@$ipaddress
else
	echo 登录中...
	ssh $user@$ipaddress
fi
	
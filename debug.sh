#/bin/sh

export DEBUG=1

exitCommand() {
	exit $1
}

runCommand() {
	echo $CMD
	$CMD
	if [ $? -ne 0 ]; then
		echo -e "[FAIL] $CMD"
		exitCommand 3
	fi 
}

#docker
CMD="docker build -t registry.cn-hangzhou.aliyuncs.com/kk/kk-tinyurl-web:debug ."
runCommand

CMD="docker run --rm -p 8080:80 registry.cn-hangzhou.aliyuncs.com/kk/kk-tinyurl-web:debug"
runCommand

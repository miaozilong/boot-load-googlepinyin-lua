谷歌拼音2.7版本有个BUG，不能开机自动挂载lua脚本，特地写了本项目，用于实现开机的时候挂载lua脚本。

# Usage
直接双击即可，如果有安全软件弹出警告，直接允许。

# Problems
如果发现使用中有问题，直接给我邮件，不要再issues中提交，没空理会issues中的问题。


# run

需要使用管理员方式运行
参考：
https://blog.csdn.net/qq_65112813/article/details/136269677
在计算机\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run中加入启动项
同时，需要将exe设置为使用管理员方式运行。
提示：不要使用shell:startup和任务计划，试过了，没用。
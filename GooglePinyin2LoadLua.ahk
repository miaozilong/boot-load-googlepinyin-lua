#Requires AutoHotkey v2.0

; 定义日志文件路径为系统临时目录下的 logfile.txt
logFile := A_Temp . "\logfile.txt"  ; 使用系统临时文件夹路径

; 写入日志函数
Log(message) {
    timestamp := FormatTime("", "yyyy-MM-dd HH:mm:ss")  ; 获取当前时间并格式化
    FileAppend(timestamp . " - " . message . "`n", logFile)  ; 拼接字符串并写入日志文件
}

; 启动 Google 拼音设置窗口
Log("启动 Google 拼音设置窗口")
Run "C:\Program Files (x86)\Google\Google Pinyin 2\GooglePinyinOptions.exe --import_ext_file=''"
Log("Google 拼音设置窗口启动命令已发送")

; 等待窗口出现
winTitle := "谷歌拼音输入法2.7设置 - ''"
Log("等待窗口 '" . winTitle . "'")
WinWait(winTitle)
Log("窗口 '" . winTitle . "' 已出现")

; 判断窗口是否仍然存在，若存在则循环点击“确定”按钮
Log("开始循环检查窗口是否存在，并持续点击 '确定' 按钮")
Loop {
    ; 判断窗口是否仍然存在
    if WinExist(winTitle) {
        ; 点击“确定”按钮
        ControlClick("确定", winTitle, , "Left", 1)
        Log("窗口仍然存在，点击 '确定' 按钮")
        Sleep(200)  ; 等待200毫秒再继续判断
    } else {
        Log("窗口已关闭，停止点击 '确定' 按钮")
        break  ; 如果窗口已关闭，退出循环
    }
}

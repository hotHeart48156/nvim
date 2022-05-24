WSL1 下设置代理:
1
export ALL_PROXY="http://127.0.0.1:10809"

macos
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890

apt 走代理
1
2
3
4
# 12proxy 这个文件不存在，需要你创建一个类似的文件
sudo vim /etc/apt/apt.conf.d/12proxy
# 在里面添加内容
Acquire::http::proxy "socks5h://192.168.1.11:7890";



socket 代理
git config --global http.proxy 'socks5://127.0.0.1:10809'
git config --global https.proxy 'socks5://127.0.0.1:10809'

http 代理
git config --global http.proxy http://127.0.0.1:10809
git config --global https.proxy https://127.0.0.1:10809

取消代理：
git config --global --unset http.proxy
git config --global --unset https.proxy


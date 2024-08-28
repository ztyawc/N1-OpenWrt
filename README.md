# 项目简介
本固件适配斐讯 N1 旁路由模式，追求精简轻量!<br>
1、使用LEAN的openwrt源码，目前集成的都是自己需要的一些插件，L大固件默认勾选的部分插件做了精简！<br>
2、吸取各个大佬的脚本精华，重点解决了action编译硬盘不够导致编译失败。（踩过很多的坑，让后来者不要走弯路）<br>
3、配置文件很精简，让后来的人一看就会。大部分的脚本配置都是密密麻麻的看不明白！<br>
4、目前的配置编译一次大概是2个小时左右...<br>
5、为了拥有自己的定制固件，等待了N多个小时的编译周期，如果对你有帮助，欢迎fork！<br>
6、ipv6完整支持！
包含的插件目录如下，自己可以根据需求增减。对lean大自带的一些插件也做了精简。
# luci
CONFIG_PACKAGE_luci-app-amlogic=y
CONFIG_PACKAGE_luci-app-dockerman=y
CONFIG_PACKAGE_luci-app-passwall=y
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-ddns-go=y
CONFIG_PACKAGE_luci-app-uhttpd=y
CONFIG_PACKAGE_luci-app-frpc=y
CONFIG_PACKAGE_luci-app-socat=y
CONFIG_PACKAGE_luci-app-cifs-mount=y
CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-app-mosdns=y
CONFIG_PACKAGE_luci-app-alist=y
CONFIG_PACKAGE_luci-app-ttyd=y
# theme
CONFIG_PACKAGE_luci-theme-design=y
CONFIG_PACKAGE_luci-app-design-config=y
CONFIG_PACKAGE_luci-theme-netgear=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-app-argon-config=y
# vpn
CONFIG_PACKAGE_luci-app-openvpn-server=y
CONFIG_PACKAGE_luci-app-zerotier=y

***
# 致谢
代码使用LEAN大的[项目](https://github.com/coolsnowwolf/lede)<br>
使用 flippy 的[脚本](https://github.com/unifreq/openwrt_packit)和 breakings 维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。

#!/bin/bash
# Git稀疏克隆，只克隆指定目录到本地
function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../package
  cd .. && rm -rf $repodir
}

# Default IP
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate


# Add packages
#添加科学上网源
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone --depth 1 https://github.com/ophub/luci-app-amlogic package/amlogic
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go package/ddnsgo
git clone --depth 1 https://github.com/sbwml/luci-app-mosdns package/mosdns
git clone --depth 1 https://github.com/sbwml/luci-app-alist package/alist
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall


#删除库中的插件，使用自定义源中的包。
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-ddns-go
rm -rf feeds/packages/net/ddns-go
rm -rf feeds/packages/net/alist
rm -rf feeds/luci/applications/luci-app-alist
rm -rf feeds/luci/applications/openwrt-passwall
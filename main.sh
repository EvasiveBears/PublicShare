#!/bin/bash
echo "更新手动添加的规则"
git pull
time=$(date "+%Y%m%d-%H%M%S")
path="${HOME}/auto_update"
echo "" > ${path}/logs.log
cd ${path}
echo "下载规则文件到本地"
curl -o "./rules/apple.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/apple.txt"
sleep 3
curl -o "./rules/applications.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/applications.txt"
sleep 3
curl -o "./rules/cncidr.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/cncidr.txt"
sleep 3
curl -o "./rules/direct.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/direct.txt"
sleep 3
curl -o "./rules/gfw.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/gfw.txt"
sleep 3
curl -o "./rules/google.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/google.txt"
sleep 3
curl -o "./rules/greatfire.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/greatfire.txt"
sleep 3
curl -o "./rules/icloud.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/icloud.txt"
sleep 3
curl -o "./rules/lancidr.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/lancidr.txt"
sleep 3
curl -o "./rules/private.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/private.txt"
sleep 3
curl -o "./rules/proxy.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/proxy.txt"
sleep 3
curl -o "./rules/reject.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/reject.txt"
sleep 3
curl -o "./rules/telegramcidr.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/telegramcidr.txt"
sleep 3
curl -o "./rules/tld-not-cn.txt" "https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/tld-not-cn.txt"

echo "推送到到gitee"
git commit -m "规则更新${time}"
git push

#
sudo sh -c "cat <<EOS > /etc/wsl.conf
[interop]
appendWindowsPath = false
EOS"

# VSCode Path
echo "export PATH=\$PATH:`which code`" >> ~/.zshrc

cat <<EOS
-- Windows Terminal ---
setting.json

profles/defaults

"startingDirectory": ".",

"fontFace": "MesloLGS NF",
"fontSize": 9,
"antialiasingMode": "cleartype",

"useAcrylic": true,
"acrylicOpacity": 0.95

EOS

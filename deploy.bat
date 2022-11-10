set es="example.service"
ssh axel-do systemctl stop %es%
wsl rsync -av package.json package-lock.json main.js axel-do:/pub/example
wsl rsync -av %es% axel-do:/etc/systemd/system/%es%
ssh axel-do "cd /pub/example && npm i"
ssh axel-do systemctl daemon-reload
ssh axel-do systemctl start %es%
ssh axel-do systemctl status %es%

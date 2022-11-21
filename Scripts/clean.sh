FILE=/var/www/html/app/server.js
if test -f "$FILE"; then
   echo "$FILE exists"
   cd /var/www/html/
   pm2 stop --silent server.js
   pm2 delete server.js
   killall -9 node
else 
    echo "$FILE does not exist."
fi
cd /var/www/html/
sudo rm -rf app
sudo mkdir app

## install

npm install -g protractor

sudo docker build -t seleniumsa ./selenium-standalone

sudo docker run -d -p 4444:4444 seleniumsa

sudo docker run -p 4444:4444 -i -t seleniumsa

DOCKER_BRIDGE_IP=$(/sbin/ifconfig docker0 | sed -n '2 p' | awk '{print $2}' | cut -d":" -f2)

protractor docker-conf.js --seleniumAddress=http://$DOCKER_BRIDGE_IP:4444/wd/hub










java -jar selenium-server-standalone-2.37.0.jar -role hub
phantomjs --webdriver=5555 --webdriver-selenium-grid-hub=http://127.0.0.1:4444

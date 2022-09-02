sudo apt-get update -y   # best to update and upgrade vm at the start
sudo apt-get upgrade -y
sudo apt-get update -y   # best to update and upgrade vm at the start
sudo apt-get upgrade -y
sudo apt-get install nginx -y   # starts after installation
sudo systemctl restart nginx
sudo systemctl enable nginx
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo systemctl restart nodejs
sudo systemctl enable nodejs
sudo apt-get install npm -y
sudo npm install pm2 -g
sudo cp -f jenkins_app/app/default /etc/nginx/sites-available/default
sudo systemctl restart nginx
sudo systemctl enable nginx
sudo apt-get update -y   # best to update and upgrade vm at the start
sudo apt-get upgrade -y

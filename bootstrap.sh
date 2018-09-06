# update yum
sudo yum update -y

# Apache
#sudo yum install -y httpd24.x86_64

# Nginx
sudo yum install -y nginx.x86_64

# PHP and necessary modules
sudo yum install -y php72.x86_64
sudo yum install -y php72-common.x86_64
sudo yum install -y php72-fpm.x86_64
sudo yum install -y php72-mysqlnd.x86_64
#sudo yum install -y php72-pgsql.x86_64
sudo yum install -y php72-pdo.x86_64
sudo yum install -y php72-json.x86_64
sudo yum install -y php72-pecl-imagick.x86_64
sudo yum install -y php72-mbstring.x86_64
#sudo yum install -y php72-mcrypt.x86_64
sudo yum install -y php72-intl.x86_64

# MySQL
sudo yum install -y mysql57-server.x86_64
sudo yum install -y mysql57.x86_64

# Postgres SQL
#sudo yum install -y postgresql96.x86_64
#sudo yum install -y postgresql96-server.x86_64

# Rsync
sudo yum install -y rsync.x86_64

# Composer
curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
sudo ln -s /usr/local/bin/composer /usr/bin/composer

# Node/NPM
curl -sL https://rpm.nodesource.com/setup_8.x | sudo -E bash -
sudo yum -y install -y nodejs
sudo npm install npm@latest -g
npm install --global gulp-cli

cd /vagrant

sudo mv craft.conf /etc/nginx/conf.d/craft.conf

composer install

npm install
# Workaround for node-sass unable to install via sudo
sudo npm install --unsafe-perm gulp-sass --save-dev

sudo cp node_modules/uikit/dist/js/uikit.min.js web/js/uikit.min.js
sudo cp node_modules/uikit/dist/js/uikit-icons.min.js web/js/uikit-icons.min.js

sudo service nginx start
sudo service php-fpm start
sudo service mysqld start
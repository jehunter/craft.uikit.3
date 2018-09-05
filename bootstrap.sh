# update yum
sudo yum update -y

# Apache
#sudo yum install -y httpd24.x86_64

# Nginx
sudo yum install -y nginx.x86_64

# PHP and necessary modules
sudo yum install -y php71.x86_64
sudo yum install -y php71-common.x86_64
sudo yum install -y php71-fpm.x86_64
sudo yum install -y php71-mysqlnd.x86_64
#sudo yum install -y php71-pgsql.x86_64
sudo yum install -y php71-pdo.x86_64
sudo yum install -y php71-json.x86_64
sudo yum install -y php71-pecl-imagick.x86_64
sudo yum install -y php71-mbstring.x86_64
#sudo yum install -y php71-mcrypt.x86_64
sudo yum install -y php71-intl.x86_64

# MySQL
sudo yum install -y mysql56-server.x86_64
sudo yum install -y mysql56.x86_64

# Postgres SQL
#sudo yum install -y postgresql95.x86_64

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

# Yarn (for UI Kit 3)
sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
sudo yum install -y yarn
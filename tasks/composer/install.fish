sudo apt install -y php-cli

curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php

# Verification
set HASH (curl -sS https://composer.github.io/installer.sig)
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

# Installation
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

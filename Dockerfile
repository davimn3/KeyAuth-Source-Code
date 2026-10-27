FROM php:8.1-apache

# Instalar extensões necessárias para o MySQL e outras dependências comuns
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar os ficheiros do projeto para a pasta pública do Apache
COPY . /var/www/html/

# Dar permissões adequadas
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

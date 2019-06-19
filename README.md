# PHP POSTGRES IONIC 4 ANGULAR 7 ANGULAR MATERIAL

1. Development

Para development correr comandos:

npm install

ionic serve

Requisitos:
NodeJS instalado
Ionic CLI
Angular CLI

2. Base de datos

Base de datos POSTGRE SQL donde debe llamarse "test" con usuario "root" y password "root"

Requisitos:
debe existir la base de datos "test" con su tabla "motivos_es_gt", de lo contrario crear la base de datos "test" e importar lo demás con el script.sql

3. Correr aplicación web

descargar carpetas "app" y "api" y moverlas dentro de una carpeta, de preferencia llamada "motivos" y ubicarla en el directorio /var/www/html/ 
quedando la jerarquía de esta forma:
var
    www
        html
            motivos
                app
                    e2e
                    src
                    www
                api

luego de todo preparado, asumiendo que el apache está funcionando solo debemos poner en el navegador: http://localhost/motivos/app/www

NOTA: es importante aclarar que debe ser la carpeta www ya que esta contiene el proyecto construido listo para producción
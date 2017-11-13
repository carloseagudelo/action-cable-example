# action-cable-example

### Implementación de un chat en tiempo real usando Ruby on Rails, Action Cable y Redis db


* **Versión de ruby:** 2.3.0

* **Versión de rails:** 5.1.3

* **Servdor de aplicaciones:** Puma 3.9.1

* **Dependencias:**
    * mysql (Base de datos)
    * redis (Base de datos en cache)
    * jquery-rails (Implementar JQuery)
    * bootstrap-sass (Bootstra)

* **Información de la base de datos de dsllo:**
    * adater: mysql2 (Adaptador de la base de datos)
    * encoding: utf8 (Set de caracteres de la base de datos)
    * username: user_name (Usuario de la base de datos)
    * password: user_password (Contraseña de la base de datos)
    * host: 192.168.1.14 (host de la base de datos)
    * port: 3306 (Puesto en el que se expone la base de datos)
    * database: database_name (Nombre de la base de datos)

* **Antes de correr el proyecto:**
    * $ rake db:create (Crea la base de datos)
    * $ rake db:migrate (Migra las tablas y campos a la base de datos)
    * $ bundle install (Instala las gemas 'lebrerias' utilizadas en la implementación)
    * $ rails s -b (host donde correrta el aplicatico) -p (puerto donde correra el aplicativo) -d (Corre como un proceso en el servidot)

* **Lugar:** Medellín Colombia
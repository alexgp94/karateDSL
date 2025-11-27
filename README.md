# Karate QA Automation - ServeRest API

## 1. Objetivo
Crear una suite de pruebas automatizadas para la API de Usuarios de [ServeRest](https://serverest.dev/) utilizando **Karate DSL**.

## 2. Estructura del Proyecto

```txt
karate-poc/
├── pom.xml
├── README.md
├── src
│   └── test
│       ├── java
│       │   └── examples
│       │       └── UsersRunner.java
│       └── resources
│           ├── features
│           │   ├── create-users.feature
│           │   ├── get-users.feature
│           │   ├── update-users.feature
│           │   └── delete-users.feature
│           └── helpers
│               └── dataGenerator.js
```

## 3. Dependencias
- Java 11 o superior
- Maven
- Karate DSL 1.5.0
- JUnit 5 (para runners)

## 4. Configuración

1. Clonar el repositorio:
```bash
git clone https://github.com/alexgp94/karateDSL
cd karate-poc
mvn clean install
```
Configurar la URL base de la API en karate-config.js:
```
function fn() {
  var config = {};
  config.baseUrl = 'https://serverest.dev/';
  return config;
}
```
## 5. Ejecución de Tests

Ejecutar desde IDE: Ejecutar UsersRunner.java.

Ejecutar con Maven:

```bash
mvn test 
```


Nota: Los tests se ejecutan correctamente si UsersRunner.java está configurado con la ruta de los feature files, por ejemplo:

## 6. Funcionalidades Automatizadas

GET /usuarios: Obtener la lista de todos los usuarios.

POST /usuarios: Registrar un nuevo usuario.

GET /usuarios/{_id}: Obtener un usuario por ID.

PUT /usuarios/{_id}: Actualizar un usuario existente.

DELETE /usuarios/{_id}: Eliminar un usuario del sistema.

## 7. Estrategia de Automatización

Uso de feature files separados por endpoint.

Validación de esquemas JSON para asegurar la integridad de los datos.

Manejo de datos dinámicos mediante dataGenerator.js.

Escenarios positivos y negativos para cada endpoint.

Runners centralizados (UsersRunner.java) para ejecutar toda la suite.

## 8. Generación de Datos de Prueba

dataGenerator.js genera nombres y emails aleatorios:

El nombre solo contiene letras.

El email se genera con inicial del primer nombre + apellido completo + número aleatorio.


## 9. Reportes

Karate genera reportes HTML en:
```bash
target/karate-reports/karate-summary.html
```

# Colaboración
> [!Important]
> ⚠️ La colaboración está restringida únicamente a los propietarios de la organización;

Traducciones: [English](../../Collaboration.md) · **Español**

# Herramientas y lenguajes
## IDE Principal
- Visual Studio Code: https://code.visualstudio.com/download?_exp_download=d53503e735
## Control de Versiones 
- Git: https://git-scm.com/install/
## Lenguajes
- MySQL Community Server (GPL): https://dev.mysql.com/downloads/
- MongoDB Community Edition: https://www.mongodb.com/docs/manual/administration/install-community/
## Extensiones de VS Code
- ~~MySQL Shell for VS Code: https://marketplace.visualstudio.com/items?itemName=Oracle.mysql-shell-for-vs-code~~
- MongoDB for VS Code: https://marketplace.visualstudio.com/items?itemName=mongodb.mongodb-vscode
- SQLTools: https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools
- SQLTools MySQL/MariaDB/TiDB: https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools-driver-mysql
## Extensiones de VS Code Opcionales pero utiles
- Database Client: https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-database-client2
- GitLens: https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
## Shell de Lenguajes
- MongoDB Shell: https://www.mongodb.com/try/download/shell
## Herramientas Opcionales para trabajar localmente fuera de GitHub
- MySQL Workbench: https://dev.mysql.com/downloads/workbench/
- MongoDB Compass (GUI): https://www.mongodb.com/try/download/compass

# Instrucciones
## Configura Git
> [!Important]
> Antes de empezar asegurate de haber configura Git correctamente. Si aun no lo has configurado o descargado todavia sigue estas instrucciones

- Primero Instala Git

- Asigna tu Identidad
    - Asigna tu Nombre de Usario:
    ```git
    git config --global user.name "Your GitHub Username"
    ```

    - Asigna tu correo: 
    ```git
    git config --global user.email "your.email@example.com"
    ```

> [!Important]
> Asegurate de que almenos tu correo sea el mismo correo que usas en GitHub

- El editor para Git
```git
git config --global core.editor "code --wait"
```

- Revisa la configuracion
```git
git config --list
```

## Empieza el Desarrollo
Primero clone este repositorio en Visual Studio Code
> puede utilizar la interfaz visual en el panel de control de código fuente. De lo contrario, utilice la terminal integrada. Revisa el siguiente video para trabajar en VS Code por GUI
[Video de entrenamiento](https://youtu.be/duawIoIhHDE)

- Clonar el repositorio en una carpeta:
    - HTTPS (predeterminado):
    ```git
    git clone [https://github.com/krea-labs/TrazoMatch.git](https://github.com/krea-labs/TrazoMatch.git)
    ```
    - SSH:
    ```git
    git clone git@github.com:krea-labs/TrazoMatch.git
    ```

> [!Important]
> Si ya clonó el repositorio en su dispositivo, ejecute el siguiente comando antes de realizar cualquier acción para prevenir conflictos de fusión
```git
git pull --rebase
```

> [!Important]
> Utilizamos GitHub Flow porque es más rápido que Git Flow

- Cree una nueva rama
    ```git
    git switch -c feature/[FEATURE_NAME]
    ```

- Subir la rama a GitHub
    ```git
    git push --set-upstream origin feature/[FEATURE_NAME]
    ```

- Asegúrate de estar en la nueva rama antes de realizar algún cambio
    ```git
    git rev-parse --abbrev-ref HEAD
    ```

    La salida debe ser: ```feature/[FEATURE_NAME]``` y no ```main```.
    En caso de que la salida sea ```main```, ejecute nuevamente los 2 últimos comandos

> [!Important]
> Primero debe instalar SQLTools (extensión de VS Code) de Matheus Teixeira

- Trabaja en la BD
    - MySQL:
        - Utilice SQLTools para conectarse a la base de datos
            - Abra la sección Database en la pestaña vertical
            - Seleccione MySQL en DataBases
            - Y finalmente agregue una nueva conexión

        - Ahora trabajamos directamente en archivo.sql

            Ejemplo:

            ```text
            relational database/data insertion/data_insetion.sql
            ```
    - MongoDB:
        - Usa MongoDB for VS Code
            - Abre el Logo de MongoDB en la Barra vertical
            - Presiona el boton ```+```, el que se encientra al lado de ```connections```
            - Presiona ```Open form```
            - Presiona el boton ```Okey``` o ```Aceptar``` 
            - haz click en el boton derecho del mouse sobre ```localhost:27017```
            - haz click en la opcion ```Launch MongoDB Shell```

        - Trabaja con los Scripts de JavaScript
            ```nosql
            SOURCE "non-relational_database/data_insertion/data_NoSQL_insertion.js";
            ```
            > Nota: Puedes crear otro script de ser neccessario.

- Agregar todos los cambios
    ```git
    git add .
    ```

- Confirmar los cambios
    ```git
    git commit -m "<commit-message>"
    ```

- Subir los cambios a GitHub
    ```git
    git push
    ```

> [!Caution]
> En caso de que envíe un commit incompleto o incorrecto por accidente, haga clic y siga el archivo a continuación
[Fix_Commit_Protocol](Fix_Commit_Protocol-SPA.md)

- Pruebe todo

- Finalmente, envíe una Pull Request
    [Envia un Pull Request en GitHub](https://youtu.be/duawIoIhHDE?si=AIWHx1UdPcO8_wX0&t=246)

- Despues de finalizar la feature regresa a la rama main
```git
git switch main
```

> [!Important]
> NO BORRES LA RAMA QUE HAZ CREADO

## Conventional Comits
- feat: Introduce una nueva funcionalidad (se correlaciona con MINOR en el - versionado semántico).
- fix: Corrige un error en la base de código (se correlaciona con PATCH en el - versionado semántico).
- refactor: Reestructura el código sin modificar su comportamiento.
- docs: Actualiza o agrega documentación.
- test: Agrega o modifica pruebas.
- chore: Mantenimiento habitual o tareas que no modifican los archivos src o test
- ```Special: Warning <type>(<section>)!: <text>```

Ejemplo:
    
```text
feat(api): remove old endpoint
```

> [!Important]
> Por convención, los commits deben redactarse en inglés. Evite enviar commits en español

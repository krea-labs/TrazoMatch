# Collaboration
> [!Important]
> ⚠️ Collaboration is restricted to the Organization's Owners only;

Translations: **English** · [Español](translations/spanish/Collaboration-SPA.md)

# Tools and Languages
## Main IDE
- Visual Studio Code: https://code.visualstudio.com/download?_exp_download=d53503e735
## Version Control 
- Git: https://git-scm.com/install/
## Languages
- MySQL Community Server (GPL): https://dev.mysql.com/downloads/
- MongoDB Community Edition: https://www.mongodb.com/docs/manual/administration/install-community/
## VS Code Extensions
- ~~MySQL Shell for VS Code: https://marketplace.visualstudio.com/items?itemName=Oracle.mysql-shell-for-vs-code~~
- MongoDB for VS Code: https://marketplace.visualstudio.com/items?itemName=mongodb.mongodb-vscode
- SQLTools: https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools
## Optional Tools to Work Locally without GitHub
- MySQL Workbench: https://dev.mysql.com/downloads/workbench/
- MongoDB Shell: https://www.mongodb.com/try/download/shell
- MongoDB Compass (GUI): https://www.mongodb.com/try/download/compass

# Instructions
## Configure Git
> [!Important]
> Before start make sure you alredy configured Git propely. If you didn't configured it or installed it yet follow this instructions

- First Install Git

- Set Indentity
    - Set Username:
    ```git
    git config --global user.name "Your GitHub Username"
    ```

    - Set Email: 
    ```git
    git config --global user.email your.email@example.com
    ```

> [!Important]
> Make sure that at least your email is the same that the email you use in GitHub

- Set Git Editor
```git
git config --global core.editor "code --wait"
```

- Check the Config
```git
git config --list
```

## Start Developing
First clone this repository in Visual Studio Code
> you can use the visual interface in Source Control Panel. otherwise use the integrate terminal. Check the Video Bellow work with VS Code GUI
[Training Video](https://youtu.be/duawIoIhHDE)

- Clone Repository in a folder:
    - HTTPS (default):
    ```git
    git clone https://github.com/krea-labs/TrazoMatch.git
    ```
    - SSH:
    ```git
    git clone git@github.com:krea-labs/TrazoMatch.git
    ```

> [!Important]
> If you alredy clone the repo in your device run the command below before anything to prevent merge conflicts
```git
git pull --rebase
```

> [!Important]
> We use GitHub Flow because is more faster than Git Flow

- Create a new branch
    ```git
    git switch -c feature/[FEATURE_NAME]
    ```

- Upload branch to GitHub
    ```git
    git push --set-upstream origin feature/[FEATURE_NAME]
    ```

- make sure that your in the new branch before make any changes
    ```git
    git rev-parse --abbrev-ref HEAD
    ```

    The output must be: ```feature/[FEATURE_NAME]``` and not ```main```.
    in case that the output is ```main``` run the last 2 commands again

> [!Important]
> You have to install SQLTools (VS Code Extension) by Matheus Teixeira first
- Work with the DB
    - MySQL:
        - Use SQLTools to conect to the database
            - Open Database section in the vertical Tab
            - Select MySQL in DataBases
            - And finally add new conection

        - Now you work directly in file.sql directly

            Example:

            ```sql
            SOURCE "relational database/data insertion/data_insetion.sql";
            ```
    - MongoDB:
        - Use MongoDB for VS Code
            - Open the MongoDB Logo in the vertical Tab
            - Press the + button next to connections
            - Press ```Open form```
            - Press Okey button
            - hit right click over ```localhost:27017```
            - hit ```Lauch MongoDB Shell```

        - Work in the JavaScript Scripts
            ```nosql
            SOURCE "non-relational_database/data_insertion/data_NoSQL_insertion.js";
            ```
            > Note: You can create other script in case you need it.

- Add All changes
    ```git
    git add .
    ```

- commit changes
    ```git
    git commit -m "<commit-message>"
    ```

- Upload changes to GitHub
    ```git
    git push
    ```

> [!Caution]
> In case you send a commit incomplete or wrong by accident click and Follow the file below 
[Fix_Commit_Protocol](Fix_Commit_Protocol.md)

- Test everything

- Finally send a pull request
    [Send a Pull Request in GitHub](https://youtu.be/duawIoIhHDE?si=AIWHx1UdPcO8_wX0&t=246)

- After finish the feature Go back to the main branch
```git
git switch main
```

> [!Important]
> DO NOT DELETE THE BRANCH that you created

## Conventional Comits
- feat: Introduces a new feature (correlates with MINOR in semantic versioning).
- fix: Patches a bug in the codebase (correlates with PATCH in semantic versioning).
- refactor: Restructures code without changing its behavior.
- docs: Updates or adds documentation.
- test: Adds or modifies tests.
- chore: Regular maintenance or tasks that do not modify src or test files
- ```Special: Warning <type>(<section>)!: <text>```

Example:
    
```text
feat(api): remove old endpoint
```

> [!Important]
> For conventions the Commits must be redacted in English. Avoid send Commits in Spanish

# Collaboration
> [!Important]
> ⚠️ Collaboration is restricted to the Organization's Owners only;

# Tools an Languages
- Visual Studio Code: https://code.visualstudio.com/download?_exp_download=d53503e735
- MySQL: https://dev.mysql.com/downloads/
- MySQL Workbench: https://dev.mysql.com/downloads/workbench/
- ~MySQL Shell for VS Code: https://marketplace.visualstudio.com/items?itemName=Oracle.mysql-shell-for-vs-code~
- SQLTools VS Code Extension: https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools

# Instructions
First clone this repository in Visual Studio Code
> you can use the visual interface in Source Control Panel. otherwise use the integrate terminal

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
> We use GitHub Flow

- Create a new branch
    ```git
    git switch -c feature/[FEATURE_NAME]
    ```

- Upload branch to GitHub
    ```git
    git push --set-upstream origin feature/[FEATURE_NAME]
    ```

- Now you work directly in file.sql directly
    Example:

    ```text
    relational database/data insertion/data_insetion.sql
    ```

- commit changes

```git
git add .
git commit -m "<commit-message>"
git push
```

- Test everything

- Finally send a pull request

# Conventional Comits
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

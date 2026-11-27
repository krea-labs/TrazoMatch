# Fix Commit Protocol
> [!Caution]
> First of all is important to not get in panic. Follow this protocol to change your commit

Translations: **English** · [Español](translations/spanish/Fix_Commit_Protocol-SPA.md)

> [!Important]
> If you didn't upload the changes in GitHub. you can simply undo your recent commit with this command
```git
git reset --soft HEAD~1
```

> Overwrite your last commit when is already uploaded in GitHub. Follow the steps bellow
- First of all DO NOT DO ANYTHING ELSE

> [!Caution]
> If you already send a pull request cancel it inmediately

- then copy this command
    ```git
    git commit --amend -m "Your correct commit message"
    ```

- Finally upload the changes in GitHub
    ```git
    git push origin feature/<feature-name> --force-with-lease
    ```

    Example:
    ```git
    git push origin feature/create-stored-procedure --force-with-lease
    ```
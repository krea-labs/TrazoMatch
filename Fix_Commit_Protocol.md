# Fix Commit Protocol
> [!Caution]
> First of all is important to not get in panic. Follow this protocol to change your commit

Translations: **English** · [Español](translations/spanish/Fix_Commit_Protocol-SPA.md)

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
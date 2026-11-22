# Protocolo para corregir commits
> [!Caution]
> En primer lugar, es importante no entrar en pánico. Siga este protocolo para modificar su commit

Traducciones: [English](../../Fix_Commit_Protocol.md) · **Español**

- En primer lugar, NO REALICE NINGUNA OTRA ACCIÓN

> [!Caution]
> Si ya envió una solicitud de extracción, cancélela de inmediato

- Luego, copie este comando
    ```git
    git commit --amend -m "Your correct commit message"
    ```

- Finalmente, suba los cambios a GitHub
    ```git
    git push origin feature/<feature-name> --force-with-lease
    ```

    Ejemplo:
    ```git
    git push origin feature/create-stored-procedure --force-with-lease
    ```
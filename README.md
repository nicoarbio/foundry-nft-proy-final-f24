# Trabajo Práctico Final - Desarrollo de Blockchains

* Alumno: Arbio, Nicolás Gabriel

> [!IMPORTANT]  
> Este proyecto trae configurado un GitHub Action que se ejecuta por cada push en la rama `main`.
> Por cada ejecución se ejecuta:
> 1. `forge --version`
> 2. `forge build --sizes`
> 3. `forge test -vvv`
> En caso de no tener errores en ninguno de los pasos anteriores, se podrá ver el estado aprobado (:heavy_check_mark:) en el commit.

> [!NOTE]
> Este workflow de GitHub Actions es generado automáticamente por foundry al ejecutar `forge init` y se encuentra en el archivo `.github/workflows/main.yml`.

#### Notas: Comandos Utilizados
- `forge init --force`
- `forge install OpenZeppelin/openzeppelin-contracts@v4.5.0`
- `source ./.env`
- `make <función del Makefile>`: `make deployAndVerify`, `make setCanBuy`
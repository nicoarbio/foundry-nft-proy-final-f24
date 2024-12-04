# Trabajo Práctico Final - Desarrollo de Blockchains

* Alumno: Arbio, Nicolás Gabriel

## GitHub Actions
> [!IMPORTANT]  
> Este proyecto trae configurado un GitHub Action que se ejecuta por cada push en la rama `main`.
> Por cada ejecución se ejecuta:
> 1. `forge --version`
> 2. `forge build --sizes`
> 3. `forge test -vvv`
> En caso de no tener errores en ninguno de los pasos anteriores, se podrá ver el estado aprobado ( :heavy_check_mark: ) en el commit.

Mediante workflows de GitHub Actions, se permite interactuar con el proyecto. Se configuraron las variables sensibles como secrets en el repositorio de GitHub de modo que se puede acceder en los `.yml`

Entre los workflows se encuentran:
1. Buildear y ejecutar los test unitarios
2. Deployar los contratos utilizando los contratos desarrollados en los scripts
3. Configurar las direcciones requeridas al contrato CCNFT
4. Configurar las variables de configuración del contrato (fees, etc)
5. Comprar un NFT (buyNFT al CCNFT)

## Direcciones de contratos
- CriptoSoja: ``
- CriptoTrigo: ``
- BUSD: `0x3eC35E7e0aD2861D149Dc5d0DF54Cd64919798d4`
- FeeCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
- FundsCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
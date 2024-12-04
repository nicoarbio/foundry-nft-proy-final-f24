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
- CriptoSoja: `0xD77D8Da5ed84C79C1c22D42FB3125E9D3315fEFE`
- CriptoTrigo: `0x1F6D46B70070335259e93c6Ea7Bc3d268399d590`
- BUSD: `0x0d1AD9fF2116325230333190a6dE56fD96289818`
- FeeCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
- FundsCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
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
5. Agregar o eliminar un valor válido para el contrato CCNFT
6. Comprar un NFT (buyNFT al CCNFT)

## Direcciones de contratos
- CriptoSoja: ``
- CriptoTrigo: ``
- BUSD: `0x0d1AD9fF2116325230333190a6dE56fD96289818`
- FeeCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
- FundsCollector: `0x9B9856B02F542778C20fC531ffBb7e16042CFbE3`
- Approved amount: `100000000000000000000000000`

## Imagenes para NFTs
- Soja: https://ipfs.io/ipfs/bafkreifequgryewbaqnlmgu2rjaupasvcu6ywlcbzw6kvhtaxzhqdnfeyu
- Trigo: https://ipfs.io/ipfs/bafkreiels5trkhppfrf2tavv64hmcucohvuiyj5y2emshkwzcgoz3tg2la

## Links para la entrega:
1. Contrato CCNFT `CriptoSoja` (`CSJ`) en Etherscan: https://sepolia.etherscan.io/address/0xD77D8Da5ed84C79C1c22D42FB3125E9D3315fEFE
    [X] Set Funds Token
    [X] Set Funds Collector
    [X] Set Fees Collector
    [X] Set Can Buy
    [X] Set Max Batch Count
    [X] Set Buy Fee
    [X] Set Max Value To Raise
    [X] Add Valid Values
    [X] Buy NFT
2. Contrato BUSD `BUSD` (`BUSD`) en Etherscan: https://sepolia.etherscan.io/address/0x0d1AD9fF2116325230333190a6dE56fD96289818
    [X] Approve contrato CriptoSoja por 100000000000000000000000000


## ADJUNTAR EL ENLACE DE SEPOLIA ETHERSCAN DE LA DIRECCION DEL CONTRATO DESPLEGADO JUNTO A TODAS LAS INTERACCIONES REALIZADAS INCLUIDA LA COMPRA DEL NFT (BUY).
## ADJUNTAR UNA CAPTURA DE PANTALLA DEL NFT "CCNFT" Y LOS TOKENS ERC20 "BUSD" IMPORTADOS A METAMASK. 
## COMPARTIR EL ENLACE DE GITHUB QUE CONTIENE EL PROYECTO COMPLETO.
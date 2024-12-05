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
6. Aprobar en el contrato BUSD el valor a utilizar por CCNFT
7. Comprar un NFT (buyNFT al CCNFT)

## Checklist:
1. Contrato CCNFT `CriptoSoja` (`CSJ`) en Etherscan: https://sepolia.etherscan.io/address/0x921993C6084386e4a66583e304Ed52022B39caEb
    - [X] Set Funds Token (`0x1F8A487F7b158230612a713Fc2cCe5D43b9a0081`)
    - [X] Set Funds Collector (`0x9B9856B02F542778C20fC531ffBb7e16042CFbE3`)
    - [X] Set Fees Collector (`0x667762F969187B5c7817D6Dc92456214962d831B`)
    - [X] Set Can Buy (`true`)
    - [X] Set Max Value To Raise (`100000000000000000000000000`)
    - [X] Set Max Batch Count (`10`)
    - [X] Set Buy Fee (`15`)
    - [X] Add Valid Values (`23000000000000000000000`)
    - [X] Approve CCNFT in BUSD (`0x1F8A487F7b158230612a713Fc2cCe5D43b9a0081`, `100000000000000000000000000`)
    - [X] Buy NFT (`23000000000000000000000`, `3`)
2. Contrato BUSD `BUSD` (`BUSD`) en Etherscan: https://sepolia.etherscan.io/address/0x1F8A487F7b158230612a713Fc2cCe5D43b9a0081
    - [X] Approve contrato CriptoSoja por 100000000000000000000000000

## Direcciones de contratos
- CriptoSoja: `0x921993C6084386e4a66583e304Ed52022B39caEb`
- CriptoTrigo: `0x34Ee50052A2B8554443342F1C3EF84ebF2682587`
- BUSD: `0x1F8A487F7b158230612a713Fc2cCe5D43b9a0081`
- FundsCollector: `0x9B9856B02F542778C20fC531ffBb7e16042CFbE3`
- FeesCollector: `0x667762F969187B5c7817D6Dc92456214962d831B`
- Approved amount: `100000000000000000000000000`

## Imagenes para NFTs
Se implementó en el IPFS Piñata las imágenes de los NFTs:
- Soja: https://ipfs.io/ipfs/bafkreifequgryewbaqnlmgu2rjaupasvcu6ywlcbzw6kvhtaxzhqdnfeyu
- Trigo: https://ipfs.io/ipfs/bafkreiels5trkhppfrf2tavv64hmcucohvuiyj5y2emshkwzcgoz3tg2la

> Faucet Sepolia Google Cloud Web3: https://cloud.google.com/application/web3/faucet/ethereum/sepolia

## Entrega
### Repositorio de GitHub (Se creó el TAG ENTREGA-1.0.0)
https://github.com/nicoarbio/foundry-nft-proy-final-f24/tree/ENTREGA-1.0.0

> [!IMPORTANT]
> Dentro del repositorio en la carpeta "logs-github-actions" se puede ver el log de ejecución de todas las instrucciones requeridas para implementar este proyecto.

### Contratos
- Contato CCNFT (CriptoSoja): https://sepolia.etherscan.io/address/0x921993C6084386e4a66583e304Ed52022B39caEb
- Contrato CCNFT (CriptoTrigo): https://sepolia.etherscan.io/address/0x34Ee50052A2B8554443342F1C3EF84ebF2682587
- Contrato BUSD: https://sepolia.etherscan.io/address/0x1F8A487F7b158230612a713Fc2cCe5D43b9a0081

### Addresses billeteras
- Address owner de los contratos y NFTs (también del FeeCollector): https://sepolia.etherscan.io/address/0x667762F969187B5c7817D6Dc92456214962d831B
- Address para el FundsCollector: https://sepolia.etherscan.io/address/0x9B9856B02F542778C20fC531ffBb7e16042CFbE3

### Capturas de pantalla Metamask
- NFTs en la cuenta 0x667762F969187B5c7817D6Dc92456214962d831B en Metamask:
    	    ![NFT CriptoSoja en Metamask](./logs-github-actions/NFTs%20in%20account%200x667762F969187B5c7817D6Dc92456214962d831B.png)

- BUSD en la cuenta 0x667762F969187B5c7817D6Dc92456214962d831B en Metamask:
            ![BUSD en Metamask](./logs-github-actions/BUSD%20in%20account%200x667762F969187B5c7817D6Dc92456214962d831B.png)

- BUSD recolectados como FundsCollector en otra cuenta 0x9B9856B02F542778C20fC531ffBb7e16042CFbE3 en Metamask:
            ![BUSD en Metamask - cuenta FundsCollector](./logs-github-actions/BUSD%20in%20FundsCollector%20account%200x9B9856B02F542778C20fC531ffBb7e16042CFbE3.png)

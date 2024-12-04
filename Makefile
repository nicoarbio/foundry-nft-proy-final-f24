-include .env

# Direcciones de los contratos deployados
CONTRACT_CCNFT_SOJA := 0X000000
CONTRACT_CCNFT_TRIGO := 0X000000
CONTRACT_BUSD := 0X000000
FEES_COLLECTOR := 0x667762F969187B5c7817D6Dc92456214962d831B
FUNDS_COLLECTOR := 0x667762F969187B5c7817D6Dc92456214962d831B

# Para especificar los detalles de red y clave privada
CONFIG_SEPOLIA := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) -etherscan-api-key $(ETHERSCAN_API_KEY)
CONFIG_SEPOLIA_VERIFY := $(CONFIG_SEPOLIA) --broadcast -vvvv --verify

# Run Unit Tests
runtest:
	@echo "Testing project"
	@forge test -vvv --gas-report

# Deploy contracts (Script)
deployCCNFTSoja:
	@echo "Deploying and verifying contract DeployCCNFTSoja:"
	@forge script script/DeployCCNFT.s.sol:DeployCCNFTSoja $(CONFIG_SEPOLIA_VERIFY)

deployCCNFTTrigo:
	@echo "Deploying and verifying contract DeployCCNFTTrigo:"
	@forge script script/DeployCCNFT.s.sol:DeployCCNFTTrigo $(CONFIG_SEPOLIA_VERIFY)

deployBUSD:
	@echo "Deploying and verifying contract BUSD"
	@forge script script/DeployBUSD.s.sol:DeployBUSD $(CONFIG_SEPOLIA_VERIFY)

# Setters
setFundsToken:
	@echo "Setting Funds Token"
	@cast send ${CONTRACT_CCNFT_SOJA} "setFundsToken(address)" ${CONTRACT_BUSD} $(CONFIG_SEPOLIA)
	@cast send ${CONTRACT_CCNFT_TRIGO} "setFundsToken(address)" ${CONTRACT_BUSD} $(CONFIG_SEPOLIA)

setFeesCollector:
	@echo "Setting Fees Collector"
	@cast send ${CONTRACT_CCNFT_SOJA} "setFeesCollector(address)" ${FEES_COLLECTOR} $(CONFIG_SEPOLIA)
	@cast send ${CONTRACT_CCNFT_TRIGO} "setFeesCollector(address)" ${FEES_COLLECTOR} $(CONFIG_SEPOLIA)

setFundsCollector:
	@echo "Setting Funds Collector"
	@cast send ${CONTRACT_CCNFT_SOJA} "setFundsCollector(address)" ${FUNDS_COLLECTOR} $(CONFIG_SEPOLIA)
	@cast send ${CONTRACT_CCNFT_TRIGO} "setFundsCollector(address)" ${FUNDS_COLLECTOR} $(CONFIG_SEPOLIA)

# CCNFT#buy
buyNFT:
	@echo "Buying NFT"
	@cast send ${CONTRACT_CCNFT_SOJA} "buy(uint256, uint256)" 23000, 3 $(CONFIG_SEPOLIA)
	@cast send ${CONTRACT_CCNFT_TRIGO} "buy(uint256, uint256)" 56000, 7 $(CONFIG_SEPOLIA)

-include .env

CONTRACT_CCNFT := 0X000000

CONTRACT_BUSD := 0X000000

# PRIVATE_KEY := 99999999999

# ETHERSCAN_API_KEY := 0X000000

# SEPOLIA_RPC_URL := https://

CONFIG_SEPOLIA := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast

CONFIG_SEPOLIA_VERIFY := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify -vvvvv -etherscan-api-key $(ETHERSCAN_API_KEY)

deployAndVerify:
	@echo "Deploying and verifying contract"
	@forge script script/DeployCCNFT.s.sol:DeployCCFT $(CONFIG_SEPOLIA_VERIFY)

setCanBuy:
	@echo "Setting canBuy"
	@cast send --contract $(CONTRACT_CCNFT) "setCanBuy(bool)" true $(CONFIG_SEPOLIA)

# TODO: REVISAR
buy: 
	@echo "Buying"
	@cast send --contract $(CONTRACT_CCNFT) "buy(uint256, uint8)" 10000000000000000 3 $(CONFIG_SEPOLIA)
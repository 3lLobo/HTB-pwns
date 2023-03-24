from web3 import Web3
from src.pwn import blockchain_pwn


ENDPOINT = "127.0.0.1:8545"

# Loval ganache node
web3 = Web3(Web3.HTTPProvider("http://" + ENDPOINT))
account = web3.eth.accounts[0]
# Set default account
web3.eth.default_account = account

# Let's pwn
blockchain_pwn(web3, None)

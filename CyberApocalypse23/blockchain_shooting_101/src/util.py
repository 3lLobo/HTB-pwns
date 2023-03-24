from typing import Any, Callable, Dict, List, Optional, Tuple, Type, Union
from web3 import Web3
from solcx import compile_source


def deploy_contract(
    web3: Web3,
    path_2_contract: str,
    base_path: str,
    account: str,
    contract_address: str = None,
) -> Web3:
    """Deploy a contract to the blockchain.
    If contract_address is provided, the contract is not deployed but
    instead an instance of the contract is returned.

    Args:
        web3 (Web3): web3 instance
        path_2_contract (str): path to the contract
        base_path (str): base path to the contracts folder
        account (str): account to deploy the contract
        contract_address (str, optional): address of the contract. Defaults to None.

    Returns:
        Web3.contract: deployed contract
    """
    with open(path_2_contract) as f:
        contract_sol = f.read()
        compiled_sol = compile_source(
            source=contract_sol,
            output_values=["abi", "bin"],
            base_path=base_path,
            allow_paths=base_path,
            optimize=True,
        )
    # Get base contract
    c_name = path_2_contract.split("/")[-1].split(".")[0]
    contract_interface = compiled_sol.get(f"<stdin>:{c_name}")

    if contract_address:
        return web3.eth.contract(
            address=contract_address, abi=contract_interface["abi"]
        )
    # Instantiate and deploy contract
    contract = web3.eth.contract(
        abi=contract_interface["abi"], bytecode=contract_interface["bin"]
    )

    # Get transaction hash from deployed contract
    tx_hash = contract.constructor().transact({"from": account})
    # print("tx_hash: ", tx_hash.decode("utf-8"))

    # Get tx receipt to get contract address
    tx_receipt = web3.eth.wait_for_transaction_receipt(tx_hash)
    deployed_contract = web3.eth.contract(
        address=tx_receipt.contractAddress, abi=contract_interface["abi"]
    )
    return deployed_contract


def transact_dict(web3: Web3, account: str) -> Dict[str, Any]:
    """Returns standard metadata for a transaction.

    Args:
        web3 (Web3): web3 instance
        account (str): account to send the transaction from

    Returns:
        Dict[str, Any]: transaction metadata
    """
    return {
        "gas": 1000000,
        "gasPrice": web3.to_wei("1", "gwei"),
        "nonce": web3.eth.get_transaction_count(account),
    }


def check_targets(target_contract: Web3):
    """Print the status of the targets to the terminal.

    Args:
        target_contract (Web3): target contract instance
    """
    first_taget = target_contract.functions.firstShot().call()
    second_target = target_contract.functions.secondShot().call()
    third_target = target_contract.functions.thirdShot().call()

    is_hit = lambda x: "✅" if x else "❌"

    print("\n============================== 🎯 ==============================")
    print(
        f"First target: {is_hit(first_taget)}\tSecond target: {is_hit(second_target)}\tThird target: {is_hit(third_target)}"
    )
    # print("=============================================================== ")

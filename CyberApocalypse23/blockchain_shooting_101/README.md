# HTB Cyber Apocalypse 2023
## Blockchain Shooting 101

Writeup for the HTB Cyber Apocalypse 2023 Blockchain Shooting 101 challenge. I believe difficulty was `very easy`.

The box provided two endpoints. One `http` enpoint for the blockchain and a `tcp` one for the instructions and flag.

### Setup

Solved with pythons web3 library. 
during the challenge you got an endpoint to connect to the blockchain with an account address and the deployed contract address.

For testing I spin up a local blockchain with `ganache` and deployed the contract.

#### Dependencies

- nodeJs
  
```bash
yarn
# Spin up a local blockchain
yarn start
```

 - Python

If you are running the challenge locally, make sure the endpoint matches and run the `run_local.py` script.
Otherwise instert the intel received from the `tcp` endpoint in `run.py` and run the very same script.

```bash
poetry install
# Execute the local script
poetry run python run_local.py
# || Execute the remote script
poetry run python run.py
```

### Writeup

#### Notes

We get two `solidity` contracts. `Setup.sol` is the main contract and has the `isSolved` function which ultimatly will trigger the return of the flag.
Is checks if three boolean values are set to true. The constructor creates an instance of the second contract and stores it in `TARGET`.

`ShootingArea.sol` is the second contract. It one function `third()` which sets the `third` boolean to true, but it controlled by a modifier which checks is the first and second boolean are set to true.
Further the `fallback` and `receive` functions are implemented and checked by similiar modifiers for the first and second boolean flags respectively.

> The `fallback` function determines the behaviour of the contracts in case that it receives a call without any data.

> The `receive` function determines what happens when the contract receives Ether.

#### The Netcat 🐈‍⬛

Connect to the tcp endpoint and listen for instructions.
You will receive a private key and a contract address.

```bash
nc <ip> <port> -v
```

A response with your private key and the contract address will be returned.

```bash
1 - Connection information
2 - Restart Instance
3 - Get flag
action? 1

Private key     :  0xxx
Address         :  0xxx
Target contract :  0xxx
Setup contract  :  0xxx
```


#### The Pwn


1. Create a web3 instance and connect to the blockchain endpoint.
2. Set the default account to end the transaction from:
   - If on the local node, just take the first standard account provided by `ganache`.
   - On the remote node, load the account with its private key.
3. Load a contract instance for the `Setup.sol` contract.
   1. Compile the contract with `solc`.
   2. A contract instance is created with the contract address and the `abi` of the contract.
      - Locally we need to deploy the contract ourselves.
      - On the remote box we are provided with the contract address, no need to redeploy.
4. Now the goal is to set all 3 `target` flags to `true`.
5. From the `Setup.sol` contract instance we get the address of the `ShootingArea.sol` contract instance. It is stored in the `TARGET` variable.
6. Initially all 3 target flags are set to `false`.
7. Send an empty transaction to the `ShootingArea.sol` contract instance.
   - Use `web3.eth.sendTransaction`,
   - Set `"data": "0x"` to send an empty transaction.
8. Wait for the transaction to be mined.
8. Call the `receive` function from the contract interface. Somehow this worqs out of the box.
9. Wait for the transaction.
10. Call the `third` function from the `TARGET` contract interface.
11. Wait 💤
12. Finally, verify the pwn by calling the `isSolved` function from the `Setup.sol` contract interface.
13. If you are on localhost, you are done now. Congrats 🎉

### Flag

To get the flag, again connect to the second endpoint and ask for the flag.

```bash
nc  <ip> <port> -v
```
You;ll now be granted the flag.

```bash
1 - Connection information
2 - Restart Instance
3 - Get flag
action? 3
HTB{f33l5_n1c3_h1771n6_y0ur_74r6375}
```


![ethNft](https://user-images.githubusercontent.com/25290565/227526079-f69e9b84-3d3e-43e5-90f4-40f11958fd1f.gif)

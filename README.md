# dElect

**A voting dApp hosted on private truffle test network**

Vote for a candidate by spending ETH creating a secure transaction voting history and a blockchain.
<br>
Spending ETH confirms the initiation of the Election.sol smart contract to run which is written to prevent illegitimate votes such as double voting.

Uses Ganche to generate ETH tokens and MetaMask chrome extention as a wallet to spend ETH in order to vote.

_Election.sol Smart contract written in Solidity_
<br>
_Testing by Mocha_

# How to use this project:
#### 1. Clone this repo.

#### 2. In terminal or git bash install truffle packages by typing: 
```npm install```

#### 2. Install Ganche and MetaMask here:
https://truffleframework.com/ganache
<br>
https://metamask.io/
#### 3. Test election.js by typing `truffle test` in the root directory folder.
#### 4. In terminal type: ` truffle migrate --reset `
#### 5. In terminal type `npm run dev` to run the program on localhost:7574. (Note that PORT: 7574 is default)

### Video Tutorial:
https://drive.google.com/open?id=1W89ISSUPkjKADE23FmMD21Nb8GHKIZ1g

# IPFS (off chain)

NFT store : https://opensea.io

## install

https://github.com/ipfs/ipfs-desktop/releases

https://chromewebstore.google.com/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch

# pinata (off chain)

https://www.pinata.cloud/

# FileCoin (on chain)

https://filecoin.io/zh-cn/build/#intro

# Arweave (on chain)

https://www.arweave.org/

# SVG (on chain)

base64 encode your svg file as tokenURI

```bash
base64 -i [FILENAME]
```

format

```
data:image/svg+xml;base64,
[your base64 result]
```

# ERC 721

https://eips.ethereum.org/EIPS/eip-721

# Deploy

testnet

```bash
make deploy ARGS="--network sepolia"
```

# import NFT on Metamask by your contract address

# verifying a transaction in Metamask

1. Check the address (read the function)
2. Check the function selector
3. Decode the calldata (check the parameters)

```bash
cast --call-data-decode "transfer(address,uint256)" <calldata>
```

https://joinfire.xyz

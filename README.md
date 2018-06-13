# Array.IO Test-net "Newton" (Alpha)

This manual describes how to setup Array.IO node.

# Requirements
* Debian 9 strongly recommended

# Install Array.IO node
```
wget https://github.com/arrayio/array-io-newton/releases/download/initial/array-io-core_0.1.183.deb
sudo dpkg -i array-io-core_0.1.183.deb
sudo ldconfig
```

# Request witness account creation
* Connect to test-net with cli-wallet utility
```
cli_wallet --wallet-file=my-wallet.json --chain-id e1117cb38cdd68ed5f17d58f271f0899b466a831d436c4742b5934dd187118ef -s ws://35.204.174.233:8090
```
* Set password for your wallet
```
set_password secret-password
```
* Unlock your wallet with your password
```
unlock secret-password
```
* Generate key pair
```
suggest_brain_key
```
* Example output:
```
{
  "brain_priv_key": "VOLET BUZZING BLASTID QUOITS RALPH WHIBA VAGUITY SONLIKE OUTGROW MISBORN CLOTBUR FRIZZER TONG DAND CARTER VERVAIN",
  "wif_priv_key": "5KaGG9t31Ajmgkm1Y8ymHDGL4czn2Su2jbjKHoYy2fYkNSPjCM7",
  "pub_key": "BTS5T5D5p3Cddo97tTA1d1iSKxHEMazthLtyUpiLpXu8rLYVyHxrH"
}
```
* Create issue in this repository or send following request to <email>
```
Hello! I want to connect "Newton" Test-net.
My public key is: BTS5T5D5p3Cddo97tTA1d1iSKxHEMazthLtyUpiLpXu8rLYVyHxrH
```
* That's all, just wait for our reply!


# Configure Array.IO node
```
git clone https://github.com/arrayio/array-io-newton.git
cd array-io-newton
```
* Attention !!! This is necessary only if you have personal account form previous steps!
* edit "config.ini"  
* replace witness-id = "1.6.6" with your witness id
* replace private-key = ["BTS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV","5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"] with your tuple of [PublicKey, WIF private key]

# Start Array.IO node
```
cd array-io-newton
LC_ALL=C witness_node --data-dir=.
```

# Alternative: Docker instructions
* Build container image
```
docker build -t array-io/array-io-newton .
```
* Run container, expose RPC and P2P ports, mount config folder ~/.config/array-io-newton at host
```
docker run -it -p 9090:9090 -p 8090:8090 -v ~/.config/array-io-newton:/array-io-newton --name array-io-newton array-io/array-io-newton
```


MIT @ `LICENSE`

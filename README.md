# Array.IO Test-net "Newton" (Alpha)

This manual describes how to setup Array.IO node.

# Requirements
* Debian / Ubuntu (Debian 9 strongly recommended)

# Request witness account creation
* Coming soon!

# Install Array.IO node
```
wget https://github.com/arrayio/array-io-newton/releases/download/initial/array-io-core_0.1.183.deb
sudo dpkg -i array-io-core_0.1.183.deb
sudo ldconfig
```

# Configure Array.IO node
```
git clone https://github.com/arrayio/array-io-newton.git
cd array-io-newton
```
* edit "config.ini"
* replace witness-id = "1.6.6" with your witness id
* replace private-key = ["BTS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV","5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"] with your tuple of [PublicKey, WIF private key]

# Start Array.IO node
```
cd array-io-newton
LC_ALL=C witness_node --data-dir=.
```


MIT @ `LICENSE`

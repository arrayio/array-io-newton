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

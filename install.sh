# Update and Install Dependencies
apt update -y
apt install -y python3 python3-dev virtualenv libpcap-dev python3-dnspython python3-pcapy

## ---------------------------------------------------------------------------
# Rather than use virtualenv to install the remaining two requirements,
# just install them with the distrobution package management tools as you would
# any other package. Using virtualenv to do this for you is rather pointless since
# the versions of these additional libraries are not pinned to any particular
# version, and the use of virtualenv was solely to satisfy the "best practices"
# method.
## ---------------------------------------------------------------------------

# Create virtualenv for script
# virtualenv -p python3 venv
# source venv/bin/activate

# Install PyPi dependencies
# pip install dnspython pcapy

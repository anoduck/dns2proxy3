# Update and Install Dependencies
apt update -y
apt install -y python3 python3-dev virtualenv libpcap-dev

# Create virtualenv for script
virtualenv -p python3 venv
source venv/bin/activate

# Install PyPi dependencies
pip install dnspython pcapy

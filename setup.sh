if [ "$(uname)" == "Darwin" ]; then
  brew install libarchive
fi
pip3 install -r requirements.txt 
if [ ! $? -eq 0 ]; then
  git clone https://github.com/seemoo-lab/opendrop.git
  pip3 install ./opendrop
fi

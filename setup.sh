if [ "$(uname)" == "Darwin" ]; then
  brew install libarchive
else
  pip install -r requirements.txt 
  if [ ! $? -eq 0 ]; then
    git clone https://github.com/seemoo-lab/opendrop.git
    pip3 install ./opendrop
  fi
fi

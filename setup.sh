if [ "$(uname)" == "Darwin" ]; then
  brew install opendrop
else
  pip install -r requirements.txt
fi

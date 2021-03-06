export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/.rbenv/shims:$PATH

eval "$(rbenv init -)"

# Openssl
OPENSSL_PATH=/usr/local/opt/openssl
if [ -d "$OPENSSL_PATH" ];then
  export PATH=$OPENSSL_PATH/bin:$PATH
  export LD_LIBRARY_PATH=$OPENSSL_PATH/lib:$LD_LIBRARY_PATH
  export CPATH=$OPENSSL_PATH/include:$LD_LIBRARY_PATH
fi

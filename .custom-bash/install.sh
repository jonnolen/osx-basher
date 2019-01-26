
SCRIPT_PATH="$( cd "$(dirname $0)"; pwd -P)"

echo $SCRIPT_PATH > "$HOME/.my-dotfiles-location"

# install nodenv
if ! which brew; then
  echo "homebrew installation is required."
  exit 1
fi

if ! which nodenv; then
  echo "installing nodenv"
  brew install nodenv
fi

# create ${HOME}/.bash_profile if necessary.
if [ ! -f "${HOME}/.bash_profile" ]; then

touch "${HOME}/.bash_profile";
cat <<EOF > "${HOME}/.bash_profile"
[[ -f "${SCRIPT_PATH}/index" ]] && source "${SCRIPT_PATH}/index"
EOF

fi

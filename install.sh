
SCRIPT_PATH="$( cd "$(dirname $0)"; pwd -P)"

BASH_PROFILE="$HOME/.bash_profile"
DOTFILE_INDEX="${SCRIPT_PATH}/index"

echo $SCRIPT_PATH > "$HOME/.my-dotfiles-location"

# create ${HOME}/.bash_profile if necessary.
if [ ! -f $BASH_PROFILE ]; then

touch $BASH_PROFILE;
cat <<EOF > $BASH_PROFILE
[[ -f "$DOTFILE_INDEX" ]] && source "$DOTFILE_INDEX"
EOF

else

# insert source index at the front of $HOME/.bash_profile
cat <<EOF > $BASH_PROFILE
[[ -f "$DOTFILE_INDEX" ]] && source "$DOTFILE_INDEX"

$(cat $BASH_PROFILE)
EOF

fi

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning to main"
  git clone https://github.com/MOH-NIHAAL/FileRenamerBot.git /FileRenamerBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FileRenamerBot
fi
cd /FileRenamerBot
pip3 install -U -r requirements.txt
echo "Starting renamer....🔥"
python3 bot.py

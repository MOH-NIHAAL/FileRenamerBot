if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning to main"
  git clone https://github.com/MOH-NIHAAL/pro.git /pro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /pro
fi
cd /pro
pip3 install -U -r requirements.txt
echo "Starting renamer....🔥"
python3 bot.py

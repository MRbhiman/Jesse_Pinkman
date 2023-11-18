if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MRbhiman/Jesse_Pinkman.git /JessePinkman
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JessePinkmanBot
fi
cd /JessePinkmanBot
pip3 install -U -r requirements.txt
echo "Starting Jesse_Pinkman...."
python3 bot.py

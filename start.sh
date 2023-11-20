if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MRbhiman/Jesse_Pinkman.git /Jesse_Pinkman
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Jesse_Pinkman
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Jesse-pinkman...."
python3 bot.py

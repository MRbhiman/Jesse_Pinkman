if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MRbhiman/Jesse_Pinkman.git /DQTheFileDonorBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQTheFileDonorBot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Jesse-pinkman...."
python3 bot.py

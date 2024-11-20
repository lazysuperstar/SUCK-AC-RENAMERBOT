apt update && apt upgrade -y
apt install git -y

# Ensure pip3 is updated
pip3 install -U pip

# Clone the repository based on UPSTREAM_REPO variable
if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/TEAM-PYRO-BOTZ/PYRO-RENAME-BOT /PyroBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /PyroBot
fi

# Navigate into the project directory
cd /PyroBot || exit

# Install Python dependencies
pip3 install -U -r requirements.txt --force-reinstall

# Start the bot
echo "Starting Bot....✨"
python3 bot.py

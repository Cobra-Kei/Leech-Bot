FROM nanthakps/kpsmlx:heroku_v2

# Set working directory
WORKDIR /usr/src/app

# Copy all files into container
COPY . .

# Give permission
RUN chmod 777 /usr/src/app

# Upgrade pip & setuptools
RUN pip3 install --upgrade setuptools pip

# Install base dependencies
RUN pip3 install --use-pep517 pymediainfo pyaes

# Install from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Start your bot
CMD ["bash", "start.sh"]

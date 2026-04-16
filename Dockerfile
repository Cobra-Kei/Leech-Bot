FROM nanthakps/kpsmlx:heroku_v2

# Set working directory
WORKDIR /usr/src/app

# Copy all files into container
COPY . .

# Give permission
RUN chmod 777 /usr/src/app

# Upgrade

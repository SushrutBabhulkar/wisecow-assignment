FROM ubuntu:latest

# Install prerequisites
RUN apt update
RUN apt install  -y cowsay fortune netcat-openbsd

ENV PATH $PATH:/usr/games

# Copy the script
COPY  wisecow.sh /usr/local/bin/

#Making script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose port 4499
EXPOSE 4499

# Start the script in the background
CMD ["sh", "/usr/local/bin/wisecow.sh"]

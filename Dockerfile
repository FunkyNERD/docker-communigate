# Use the official Ubuntu base image
FROM ubuntu:latest
ARG VERSION=8.0.5
ARG FILE=CGateSPEC-Linux-${VERSION}-x86_64.deb

# Download the latest version of CommuniGate from https://support.mailspec.com/en/news/product-updates
# and place it in the same directory as this Dockerfile
COPY $FILE /tmp/

# Copy a file from a URL into the image
RUN dpkg -i /tmp/$FILE; \
    rm -rf /tmp/$FILE;

EXPOSE 9010
EXPOSE 25
EXPOSE 110
EXPOSE 143
EXPOSE 465
EXPOSE 587
EXPOSE 993

# Specify the command to run when the container starts
CMD ["/opt/CommuniGate/CGServer"]


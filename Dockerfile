# Use the official Ubuntu base image
FROM ubuntu:latest

# Download the latest version of CommuniGate from https://support.mailspec.com/en/news/product-updates
# and place it in the same directory as this Dockerfile
COPY CGateSPEC-Linux-8.0.4-x86_64.deb /tmp/

# Copy a file from a URL into the image
RUN dpkg -i /tmp/CGateSPEC-Linux-8.0.4-x86_64.deb; \
    rm -rf /tmp/CGateSPEC-Linux-8.0.4-x86_64.deb;

EXPOSE 9010
EXPOSE 25
EXPOSE 110
EXPOSE 143
EXPOSE 465
EXPOSE 587
EXPOSE 993

# Specify the command to run when the container starts
CMD ["/opt/CommuniGate/CGServer"]


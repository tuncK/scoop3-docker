# Use this VNC image to deploy desktop application Scoop3.
FROM dorowu/ubuntu-desktop-lxde-vnc

USER root

# Download the ODV code.
WORKDIR /root/Desktop

RUN wget https://gitlab.ifremer.fr/repositories/public/-/package_files/71536/download
RUN tar -xvzf download && rm download


# Folders for input files from/to Galaxy history
RUN mkdir -p input_files output_files

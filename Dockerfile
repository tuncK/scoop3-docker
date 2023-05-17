# Use this VNC image to deploy desktop application Scoop3.
FROM dorowu/ubuntu-desktop-lxde-vnc

USER root

# Download the ODV code.
WORKDIR /root/Desktop

RUN wget https://usegalaxy.eu/static/share/scoop3-argo-1.40.tgz && \
    tar -xvzf scoop3-argo-1.40.tgz && \
    rm scoop3-argo-1.40.tgz

# Add something like that to autostart the application
# ENV OPENBOX_ARGS='--startup "/opt/hdfview/bin/HDFView /root/Desktop/input"'

# Folders for input files from/to Galaxy history
RUN mkdir -p input_files output_files
ENTRYPOINT []
CMD []

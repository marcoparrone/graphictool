FROM fedora

RUN dnf install -y ImageMagick

CMD [ "convert" ]

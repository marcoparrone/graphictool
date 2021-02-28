# graphictool

A very useful graphic tool, packaged in a docker container.

See https://imagemagick.org for more information about the tool.

## Prerequisites

podman or docker are needed.

I tested these scripts on CentOS Stream release 8 with podman.

If you use docker, replace docker=podman with docker=docker in the Makefile.

## Installation

```sh
git clone git@github.com:marcoparrone/graphictool.git
cd graphictool
make
```

## Usage

Add in your ~/.bash_aliases or in your ~/.bashrc:

```sh
for command in animate compare composite conjure convert display identify import mogrify montage stream; do
        eval "alias ${command}=\"podman run --rm -it -v .:/root/workdir -w /root/workdir marcoparrone/graphictool ${command}\""
done
```

then, after reloading the file, run the gm command, for example:

```sh
convert reminder.png -bordercolor white -border 0 \( -clone 0 -resize 16x16 \) \( -clone 0 -resize 32x32 \) \( -clone 0 -resize 48x48 \) \( -clone 0 -resize 64x64 \) -delete 0 -alpha off -colors 256 favicon.ico
```

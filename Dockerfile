FROM ubuntu:18.04

LABEL org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https//github.com/nturaga/bioconductor-latex" \
      org.label-schema.vendor="Bioconductor Project" \
      maintainer="Nitesh Turaga <nturaga.bioc@gmail.com>"

RUN apt-get update \
	&& apt-get -y install --no-install-recommends \
	ca-certificates \
	perl  \
	wget \
	fontconfig \
	gcc \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh

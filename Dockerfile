FROM ubuntu:18.04

LABEL org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https//github.com/nturaga/bioconductor-latex" \
      org.label-schema.vendor="Bioconductor Project" \
      maintainer="Nitesh Turaga <nturaga.bioc@gmail.com>"

# Update apt-get
RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
	texlive \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-bibtex-extra \
	texlive-science \
	texi2html \
	texinfo \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

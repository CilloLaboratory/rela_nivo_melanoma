# syntax=docker/dockerfile:1

FROM rocker/rstudio:4.1.0

MAINTAINER Anthony Cillo <anthony.r.cillo@gmail.com>

RUN mkdir /home/data
RUN mkdir /home/blogdown
RUN mkdir /home/R

RUN apt-get clean all \
  && apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
	libcairo2-dev \
	libcurl4-openssl-dev \
	libssl-dev \
	zlib1g-dev \
	make \
	libglpk-dev \
	libgmp3-dev \
	libxml2-dev \
	libjpeg-dev \
	pandoc \
	cmake \
	libpng-dev \
	libfreetype6-dev \
	libtiff-dev \
	git \
	python3 \
	default-jdk \
	libicu-dev \
	libfontconfig1-dev \
	libfribidi-dev \
	libharfbuzz-dev \
	libgit2-dev \
  && apt-get clean all \
  && apt-get purge

ENV RENV_VERSION 0.12.0
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

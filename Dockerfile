FROM scratch
ADD ./ /
WORKDIR /opt/alist/
LABEL MAINTAINER="i@nn.ci"
EXPOSE 5244
CMD ["/alist","server","--no-prefix"]

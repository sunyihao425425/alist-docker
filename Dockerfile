FROM xhofe/alist:latest
ADD ./ /
EXPOSE 5244
CMD ["/alist","server","--no-prefix"]

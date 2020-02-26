FROM busybox
MAINTAINER Romin Irani (email@domain.com)
ENTRYPOINT [“/bin/cat”]
CMD [“/etc/passwd”]

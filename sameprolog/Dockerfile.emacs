FROM clearlinux:latest
RUN swupd update && \
    swupd bundle-add c-basic strace
FROM clearlinux:latest
RUN swupd bundle-add emacs
CMD ["/bin/bash"]


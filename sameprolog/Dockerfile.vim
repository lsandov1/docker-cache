FROM clearlinux:latest
RUN swupd update && \
    swupd bundle-add c-basic strace
FROM clearlinux:latest
RUN swupd bundle-add vim
CMD ["/bin/bash"]


FROM clearlinux:latest
RUN swupd update && \
    swupd bundle-add c-basic strace

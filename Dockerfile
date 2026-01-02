FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install  dependencies
RUN apt update && \
    apt install -y alien rpm libc6 libncurses5 libstdc++6 zlib1g && \
    apt clean

COPY bcl-convert.rpm /tmp/bcl-convert.rpm

RUN alien -k /tmp/bcl-convert.rpm

RUN dpkg -i /bcl-convert*.deb || apt --fix-broken install -y

# Add  PATH 
ENV PATH="/usr/local/bin:${PATH}"

CMD ["bcl-convert", "--help"]


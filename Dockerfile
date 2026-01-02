FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt update && \
    apt install -y alien rpm libc6 libncurses5 libstdc++6 zlib1g && \
    apt clean

# Copy the RPM file into the container
COPY bcl-convert.rpm /tmp/bcl-convert.rpm

# Convert RPM to DEB
RUN alien -k /tmp/bcl-convert.rpm

# Install the converted DEB file
RUN dpkg -i /bcl-convert*.deb || apt --fix-broken install -y

# Add bcl-convert to PATH (usually installs in /usr/local/bin)
ENV PATH="/usr/local/bin:${PATH}"

CMD ["bcl-convert", "--help"]


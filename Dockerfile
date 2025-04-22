FROM debian:bookworm-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    automake \
    texinfo \
    texlive \
    libtool \
    wget \
    && rm -rf /var/lib/apt/lists/*
 
# Next steps better done in local repository
#RUN ./autopull.sh
#RUN ./autogen.sh

## Run the configure script
#RUN ./configure
#
## Build the project
#RUN make
#
## Run the tests
#RUN make check
#
## Install the project
#RUN make install
#
## Command to run the application
## CMD ["./gperf", "--output-file=test.c","./tests/c++.gperf"]

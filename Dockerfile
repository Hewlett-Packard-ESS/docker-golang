FROM hpess/chef:master
MAINTAINER Karl Stoney <karl.stoney@hp.com> 

RUN cd /usr/local && \
    wget --quiet https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz && \
    tar -xzf go1.4.2.linux-amd64.tar.gz && \
    rm go1.4.2.linux-amd64.tar.gz

# Add it to the path
ENV PATH $PATH:/usr/local/go/bin
ENV HPESS_ENV go
RUN echo "export PATH=$PATH:/usr/local/go/bin" > /etc/profile.d/00Go.sh

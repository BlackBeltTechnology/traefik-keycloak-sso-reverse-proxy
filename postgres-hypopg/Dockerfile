FROM postgres:9.6
 
RUN apt-get update && apt-get -y install wget build-essential postgresql-server-dev-9.6
 
RUN wget https://github.com/dalibo/hypopg/archive/1.0.0.tar.gz && \
    tar xf 1.0.0.tar.gz && \
    cd hypopg-1.0.0 && \
    make && \
    make install

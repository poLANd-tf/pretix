FROM pretix/standalone:stable
USER root
COPY package .
RUN pip3 install pretix-fontpack-free-custom-1.10.2.tar.gz
USER pretixuser
RUN cd /pretix/src && make production
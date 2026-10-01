FROM pretix/standalone:stable
USER root
COPY package .
RUN pip3 install pretix_custom_fonts-1.0.0.tar.gz pretix-fontpack-free
USER pretixuser
RUN cd /pretix/src && make production
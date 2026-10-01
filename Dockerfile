FROM pretix/standalone:stable
USER root
COPY pretix/pretix_custom_fonts-1.0.0.tar.gz .
RUN pip3 install pretix_custom_fonts-1.0.0.tar.gz pretix-fontpack-free && \
    rm pretix_custom_fonts-1.0.0.tar.gz
USER pretixuser
RUN cd /pretix/src && make production
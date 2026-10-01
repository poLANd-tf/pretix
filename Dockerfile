FROM pretix/standalone:stable
USER root
COPY pretix_custom_fonts-1.0.0.tar.gz /tmp/pretix_custom_fonts-1.0.0.tar.gz
RUN pip3 install /tmp/pretix_custom_fonts-1.0.0.tar.gz pretix-fontpack-free && \
    rm /tmp/pretix_custom_fonts-1.0.0.tar.gz
USER pretixuser
RUN cd /pretix/src && make production
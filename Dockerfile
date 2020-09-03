FROM quay.io/biocontainers/hisat2:2.2.1--he1b5a44_2

LABEL \
    description="hisat2 and sambamba"

RUN mkdir -p /opt/sambamba 

#Import sambamba
COPY sambamba-0.7.1-linux-static.gz /opt/sambamba/sambamba-0.7.1-linux-static.gz
RUN gunzip /opt/sambamba/sambamba-0.7.1-linux-static.gz && ln -s /opt/sambamba/sambamba-0.7.1-linux-static /usr/local/bin/sambamba && chmod +x /opt/sambamba/sambamba-0.7.1-linux-static /usr/local/bin/sambamba

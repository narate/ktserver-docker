FROM alpine:3.7
MAINTAINER Narate Ketram <rate@dome.cloud>

RUN apk add --update --no-cache git build-base lua5.1-dev lzo-dev zlib-dev
RUN cd /tmp && \
	git clone https://github.com/narate/kyoto.git && \
	cd kyoto && \
	make && \
	make install && \
	make clean && \
	cd && \
	rm -rf /tmp/kyoto
RUN mkdir -p /data/db
CMD ["ktserver", "-plsv",  "/usr/local/libexec/ktplugservmemc.so", "-plex", "port=11211", "/data/db/casket.kch#opts=l#bnum=20000000#msiz=4g#dfunit=8" ]
EXPOSE 11211


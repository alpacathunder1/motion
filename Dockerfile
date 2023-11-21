FROM alpine
RUN apk add --no-cache \
	tzdata \
	tini
RUN apk add --no-cache \
	-X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
	motion
ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/motion", "-c", "/config/motion.conf"]

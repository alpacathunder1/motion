FROM debian:bookworm-slim
RUN apt update && \
	apt install -y \
	tzdata \
	tini
RUN apt install -y \
	motion
RUN apt clean
#RUN chown 777 /etc/motion
ENTRYPOINT ["/usr/bin/tini", "--", "motion", "-c", "/config/motion.conf"]

FROM debian:bookworm-slim
RUN apt update && \
	apt install -y \
	tzdata \
	tini && \
	apt clean && \
	rm -rf /var/lib/apt/lists/
RUN apt update && \
	apt install --no-install-recommends -y \
	motion && \
	apt clean && \
	rm -rf /var/lib/apt/lists/
ENTRYPOINT ["/usr/bin/tini", "--", "motion", "-c", "/config/motion.conf"]

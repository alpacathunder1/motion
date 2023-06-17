
# motion

A basic motion Dockerfile.

```yaml
  motion:
    build:
      context: /opt/motion
    container_name: motion
    depends_on:
    - swag
    devices:
    - /dev/video0:/dev/video0
    environment:
      TZ: America/New_York
    labels:
      diun.enable: "false"
    logging:
      driver: json-file
      options:
        max-size: 64m
    networks:
      belphegornet: null
    restart: always
    user: 1000:044
    volumes:
    - /opt/motion/config:/config:ro
    - /opt/motion/data:/data:rw

```

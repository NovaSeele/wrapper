FROM ubuntu:latest

WORKDIR /app

# Copy the prebuilt wrapper binary
COPY wrapper /app/wrapper

# Copy the rootfs directory
COPY rootfs /app/rootfs

# Make it executable
RUN chmod +x /app/wrapper

ENV args ""

CMD ["bash", "-c", "./wrapper ${args}"]

EXPOSE 10020 20020
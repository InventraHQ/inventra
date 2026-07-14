FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        git \
            git-lfs \
                curl \
                    wget \
                        unzip \
                            xz-utils \
                                zip \
                                    ca-certificates \
                                        clang \
                                            cmake \
                                                ninja-build \
                                                    pkg-config \
                                                        libgtk-3-dev \
                                                            libglu1-mesa \
                                                                openjdk-17-jdk && \
                                                                    git lfs install && \
                                                                        rm -rf /var/lib/apt/lists/*

                                                                        RUN git clone https://github.com/flutter/flutter.git /opt/flutter

                                                                        ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}"

                                                                        RUN flutter config --no-analytics && \
                                                                            flutter doctor
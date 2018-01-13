# This file defines a minimal Linux running Java 8 Server Edition with unlimited Cryptography

# We use a popular Docker Image based on Alpine Linux that is up to date with the latest Java 8 version, although
# nothing is added from our side, this is an indirection layer that will allow us to easily adapt to future scenarios,
# e.g. in case we need to replace the underlying Linux image.

FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER Manuel Bernal Llinares <mbdebian@gmail.com>

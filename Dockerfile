FROM  eclipse-temurin:11-jdk-jammy

ENV LANG="C.UTF-8"
LABEL name="BASE_EAP2" version="eclipse-temurin_11-jdk-jammy" architecture="amd64,arm64v8" maintainer="LPETERS999"
RUN apt update && apt upgrade -y -f \
  && apt install -f -y bash fontconfig fonts-dejavu wget git unzip zip patch grep curl xmlstarlet \
  && cd /tmp && git clone https://github.com/LPETERS006/eap-build2.git
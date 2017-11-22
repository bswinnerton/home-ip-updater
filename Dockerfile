FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl jq
COPY . /root
CMD ["/root/update-dnsimple-ip-address"]

FROM nvidia/cuda
MAINTAINER Menglong TAN "tanmenglong@zhuanzhuan.com"
RUN apt update && \
	apt install -y python-twisted python-pip && \
	mkdir /data
COPY ethminer /data/ethminer
COPY eth-proxy /data/eth-proxy
COPY start.sh /data/start.sh
CMD /data/start.sh

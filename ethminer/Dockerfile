FROM nvidia/cuda
MAINTAINER Menglong TAN "tanmenglong@zhuanzhuan.com"
RUN apt update && \
	apt install -y python-twisted python-pip openssh-server && \
	mkdir /data
COPY gputest /data/gputest
COPY eth-proxy /data/eth-proxy
COPY start.sh /data/start.sh
CMD /data/start.sh

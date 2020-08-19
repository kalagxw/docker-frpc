FROM alpine
MAINTAINER kala

WORKDIR /

RUN set -x && \
	wget --no-check-certificate https://qianqu.me/frp/frpc_linux_amd64 && \ 
	mv ./frpc_linux_amd64 /usr/bin/frpc
  
CMD frpc -f eacdfeeb9d0a911d:264166  

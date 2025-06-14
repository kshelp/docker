# 1. 베이스 이미지로 Ubuntu:latest 사용
FROM ubuntu:latest

# 2. 환경 변수 설정 (인터랙티브 모드 방지)
ENV DEBIAN_FRONTEND=noninteractive

# 3. 패키지 업데이트 및 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y openssh-server vim iputils-ping net-tools openjdk-17-jdk && \
    mkdir /var/run/sshd

# 4. SSH 접속을 위한 루트 비밀번호 설정 (보안을 위해 실제 환경에서는 SSH 키를 사용하는 것을 권장)
RUN echo 'root:root' | chpasswd
RUN echo 'ubuntu:ubuntu' | chpasswd

# 5. SSH 접속 시 루트 로그인 허용 (보안을 위해 실제 환경에서는 비활성화하는 것을 권장)
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# 6. 패스워드 인증 허용 (보안을 위해 실제 환경에서는 SSH 키 인증을 사용하는 것을 권장)
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 7. Nginx 기본 설정 변경 (필요 시)
#RUN echo "Hello from 80!" > /var/www/html/index.html
#RUN sed -i 's/listen 80 default_server;/listen 8080 default_server;/' /etc/nginx/sites-available/default

# 8. 서비스 시작 스크립트 추가
RUN echo '#!/bin/bash \n\
service ssh start \n\
tail -f /dev/null' > /start.sh && chmod +x /start.sh

# 9. 포트 22과 8080 노출
EXPOSE 22 8080

# 10. 컨테이너 시작 시 실행할 명령어 설정
CMD ["/start.sh"]

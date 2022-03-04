FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
RUN python3 -m pip install django 

COPY app/mysite/ /app

WORKDIR /app

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "./entrypoint.sh"]

ENV DJANGO_ADMIN_USERNAME=Test
ENV DJANGO_ADMIN_EMAIL=test@test.test
ENV DJANGO_SUPERUSER_PASSWORD=Test

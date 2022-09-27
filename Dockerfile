FROM ubuntu:latest

COPY . /app/

RUN sed -i 's/\r//' /app/*.sh

RUN chmod +x /app/*.sh

WORKDIR /app/

ENTRYPOINT ["bash","/app/mr-file-finder.sh"]

FROM ubuntu:latest

COPY . /app/

COPY ./files/ /app/files

RUN sed -i 's/\r//' /app/*.sh

RUN chmod +x /app/*.sh

WORKDIR /app/

ENTRYPOINT ["bash","/app/mr-file-finder.sh"]

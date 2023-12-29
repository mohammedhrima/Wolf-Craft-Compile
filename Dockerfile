FROM debian:stable

WORKDIR /app
COPY compiler .
COPY _setup.sh .

RUN apt update -y \
    && apt full-upgrade -y \
    && apt install gcc -y \
    && apt install g++ -y \
    && apt install vim -y \
    && apt install man -y \
    && apt install git -y \
    && apt install python3 -y

CMD ["sh", "_setup.sh"]

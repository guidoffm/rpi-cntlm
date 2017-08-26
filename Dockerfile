FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get dist-upgrade -y && apt-get install cntlm

EXPOSE 3128

LABEL description="CNTLM for Raspberry Pi (Hypriot)"

CMD ["cntlm","-f"]

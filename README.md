# rpi-cntlm
CNTLM for Raspberry Pi (Hypriot)

- For Docker host OS use Hypriot: https://blog.hypriot.com/

- Create a local file `cntlm.conf` on the Docker host system, e.g. `/data/cntlm.conf`. Use https://github.com/Evengard/cntlm/blob/master/doc/cntlm.conf as template. Adjust the file to meet your requirements.

- Create the required password hashes using this command:

```docker run -it --rm -v /data/cntlm.conf:/etc/cntlm.conf  guidoffm/rpi-cntlm cntlm -H```

- Update your cntlm.conf with the generated password hashes.

- Run the container: 

`docker run -d -v /data/cntlm.conf:/etc/cntlm.conf -p 3128:3128 --name cntlm guidoffm/rpi-cntlm`



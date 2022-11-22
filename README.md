# docker-bluez

Run BlueZ stack in Docker container

Tested on ROCK 4SE

0. Install Docker and test
[https://docs.docker.com/engine/install](https://docs.docker.com/engine/install/)


1. Ensure Bluetooth is disabled on host

```shell
sudo systemctl stop bluetooth.service
``` 

2. Build container

```shell
docker build -t ble-container:01 .
```

3. Run container - starts with shell prompt

```shell
docker run --name ble --rm --net=host --privileged -it ble-container:01
```

4. Access a shell on the running containter:

```shell
docker exec -it ble bash
```


Trouble-shooting:

If there are errors check that the no one is running bluetoothd

```shell
sudo killall -9 bluetoothd
```

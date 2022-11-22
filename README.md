# docker-bluez
Run Bluez stack in Docker container

1. Ensure Bluetooth is disabled on host

rock@rock-4se:~$ sudo systemctl stop bluetooth.service 

2. Build container

docker build -t ble-container:01 .

3. Run container - starts with shell prompt

docker run --name ble --rm --net=host --privileged -it ble-container:01

4. Access a shell on the running containter:

docker exec -it ble bash


Trouble-shooting:

If there are errors check that the knowone is running bluetoothd

sudo killall -9 bluetoothd

# Crack a pcap file

```bash
docker run --rm -it -v $(pwd)/input:/input -v /media/coyote/easystore:/database pyrit -u file:///database -r /input/input.cap attack_db
```


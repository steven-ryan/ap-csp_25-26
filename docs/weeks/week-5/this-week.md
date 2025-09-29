---
title: Week 5 — Plan
---
{% include topnav.md %}


# Thursday

## Bonus coverage:

Run Over:
- Read Barrons Chapter 5: Big Idea4: COmputer Systems and networks - pages 315- 321 - Make notes of key points, check existing notes for definitions in here
- talk about binary, decimal ipv4 octets  (p317)
-TCp vs UDP
- HTTP vs WWW
- parallel computing example python progam


### Parallel computing
```python
import random

def task(name):
    duration = random.randint(2, 5)
    print(f"Starting {name} (will take {duration}s)")
    time.sleep(duration)
    print(f"Finished {name}")

start = time.time()
task("Task 1")
task("Task 2")
end = time.time()
print(f"Sequential total time: {end - start:.2f} seconds")
```

```python
import time
import random
import threading

def task(name):
    duration = random.randint(2, 5)
    print(f"Starting {name} (will take {duration}s)")
    time.sleep(duration)
    print(f"Finished {name}")

start = time.time()
t1 = threading.Thread(target=task, args=("Task 1",))
t2 = threading.Thread(target=task, args=("Task 2",))
t1.start()
t2.start()
t1.join()
t2.join()
end = time.time()
print(f"Parallel total time: {end - start:.2f} seconds")
```


### Distributed computing
- worker.py
```python
import socket
import time
import random

def do_work(task_name):
    duration = random.randint(2, 5)
    print(f"Worker: Starting {task_name} ({duration}s)")
    time.sleep(duration)
    print(f"Worker: Finished {task_name}")
    return duration

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(('0.0.0.0', 5000))
server.listen(1)
print("Worker: Waiting for master...")

conn, addr = server.accept()
task_name = conn.recv(1024).decode()
result = do_work(task_name)
conn.send(str(result).encode())
conn.close()
server.close()
```

- master.py
```python
import socket
import time
import random
import threading

def local_task(name):
    duration = random.randint(2, 5)
    print(f"Master: Starting {name} ({duration}s)")
    time.sleep(duration)
    print(f"Master: Finished {name}")
    return duration

def remote_task(name, worker_ip):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((worker_ip, 5000))
    s.send(name.encode())
    result = s.recv(1024).decode()
    s.close()
    print(f"Master: Worker finished {name} in {result}s")
    return int(result)

start = time.time()

worker_ip = '192.168.1.2' # Replace 'worker_ip' with the actual IP address of the worker computer

t1 = threading.Thread(target=local_task, args=("Task 1",))
t2 = threading.Thread(target=remote_task, args=("Task 2", worker_ip))
t1.start()
t2.start()
t1.join()
t2.join()
end = time.time()
print(f"Distributed total time: {end - start:.2f} seconds")

```



## Unit 2 - Lesson 3: The Need for Addressing
- just watch video at the end
- Lesson: https://studio.code.org/courses/csp-2025/units/2/lessons/3
- Slides: https://docs.google.com/presentation/d/1o1uXWuf6SUXsjT15nQd6xJCU2fC1-BQqg0_XcyKK5Go/template/preview

Needs a class, replace: 
- Check knowlege
    - OSI https://i.sstatic.net/t7lJ2.jpg and https://i.sstatic.net/Zknbj.png (https://stackoverflow.com/questions/31446777/difference-between-packets-and-frames)
    - IP address
    - MAC address
    - Router
    - Switch
    - Packet  
    - gateway / routing table `route` - how it gets this info 

Packet

> A packet is the unit of data that is routed between an origin and a destination on the Internet or any other packet-switched network. When any file (e-mail message, HTML file, Graphics Interchange Format file, Uniform Resource Locator request, and so forth) is sent from one place to another on the Internet, the Transmission Control Protocol (TCP) layer of TCP/IP divides the file into "chunks" of an efficient size for routing. Each of these packets is separately numbered and includes the Internet address of the destination. The individual packets for a given file may travel different routes through the Internet. When they have all arrived, they are reassembled into the original file (by the TCP layer at the receiving end).

## Preperation


## Unit 2 - Lesson 4: Routers and Redundancy
- Lesson:  https://studio.code.org/teacher_dashboard/sections/6109201/materials
- Slides: https://docs.google.com/presentation/d/1lz4044iPKTDcAj-ZM7ovFw0w5wfPVm4jQ0ryMab7H1U/template/preview

## Home work:


===

# Friday
Unit 2 The Internet

## Preperation

## Unit 2 - Lesson 5: Packets
- Lesson: https://studio.code.org/courses/csp-2025/units/2/lessons/5
- Slides: https://docs.google.com/presentation/d/1wjUUTlrbDUvKiV-KDbVmhvUqFujlOkUrzQYJJRIYPCg/template/preview

## Preperation

## Unit 2 - Lesson 6: HTTP and DNS
- Lesson: https://studio.code.org/courses/csp-2025/units/2/lessons/6
- Slides: https://docs.google.com/presentation/d/1fwfC6Wa4BNo0U-WVv6Hsr43y9YZfJMx0AVMUThwxTpg/template/preview

## Home work:
- Should have previously read Barron’s: p333-341 - Do the quiz that follows 324-349 (Photo copy)


===


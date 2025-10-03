---
title: Week 5 — Plan
---
{% include topnav.md %}



# Thursday

## Preperation
- Get something ready to run some python code (Check it works )


## Bonus coverage:

Run Over:
- Homework which was: Read Barrons Chapter 5: Big Idea 4: Computer Systems and networks - pages 315- 321 
    - Review notes of key points
- talk about binary, decimal ipv4 octets  (p317)
- TCP vs UDP
- HTTP vs WWW
- Parallel computing example python progam


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
worker.py

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

master.py

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
- Just watch video at the end
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
- All materials: https://studio.code.org/teacher_dashboard/sections/6109201/materials
- Lesson:  https://studio.code.org/courses/csp-2025/units/2/lessons/4
- Slides: https://docs.google.com/presentation/d/1lz4044iPKTDcAj-ZM7ovFw0w5wfPVm4jQ0ryMab7H1U/template/preview
- https://csacademy.com/app/graph_editor/ - draw route

Objective
Understand how data travels across the Internet, how routes can change, and how redundancy and routing work in real networks.

Step-by-Step Activity
1. Introduction
Explain that, just like the code.org Internet Simulator, real Internet messages travel through many routers to reach their destination.
Each “hop” in traceroute is like a router in the simulator.
2. Run a TCP Traceroute
In the terminal, run:

(or use another site from your list)

Watch as the output lists each hop (router) along the path.

3. Record the Path
Write down the IP addresses or hostnames of each hop.
Count the number of hops.
4. Repeat and Compare
Run the same command again after a minute or two.
Try a different website (e.g., traceroute -T www.bbc.co.uk).
Note any differences in the path or number of hops.
5. Discussion and Analysis
Are the paths always the same? Did any hops change?
What might cause the path to change? (e.g., network congestion, redundancy, router failure)
What happens if a hop times out or is missing? (Redundancy allows packets to find another path.)
Student Questions
Q1. Run traceroute -T www.google.com three times. Did the path (the list of hops) stay the same each time? If not, what changed?

Sample Answer:
The path was mostly the same, but sometimes a hop changed or a new one appeared. This shows that the Internet can route packets differently depending on network conditions.

Q2. Try traceroute to two different websites (e.g., www.google.com and www.wikipedia.org). Did the paths share any hops? Where did they diverge?

Sample Answer:
The first few hops were the same for both sites, but after a certain point, the paths diverged. This is because the packets left my local network and went to different destinations.

Q3. If a hop in the path times out (shows * * *), what does that mean? Does the traceroute still reach the destination?

Sample Answer:
A timeout means that router didn’t respond to the traceroute request, possibly due to a firewall or configuration. The traceroute can still reach the destination if there are other working hops.

Q4. Why is it important for the Internet to have multiple possible paths (redundancy) between two points?

Sample Answer:
Redundancy ensures that if one path fails (e.g., a router goes down), data can still reach its destination using another path. This makes the Internet more reliable.

Q5. How does this traceroute activity relate to the code.org Internet Simulator?

Sample Answer:
Both show that messages can take different routes to reach the same destination, and that the network can adapt if a path is unavailable. Traceroute shows this happening on the real Internet.

Extension
Try traceroute at different times of day or from different networks (e.g., home vs. school) and compare results.
Research what some of the intermediate routers are (using their hostnames or IPs).


```
 sudo tcptraceroute www.google.com 80
Selected device en0, address 192.168.11.20, port 61942 for outgoing packets
Tracing the path to www.google.com (216.239.38.120) on TCP port 80 (http), 30 hops max
 1  192.168.11.1  0.547 ms  0.355 ms  0.344 ms
 2  lo0-0.bng4.thn-lon.zen.net.uk (51.148.77.132)  32.498 ms  14.539 ms  22.912 ms
 3  * * *
 4  lag-2.br2.thn-lon.zen.net.uk (51.148.73.155)  6.507 ms  6.192 ms  6.368 ms
 5  72.14.217.190  6.993 ms  6.614 ms  7.036 ms
 6  209.85.255.77  6.486 ms  6.058 ms  6.464 ms
 7  142.251.54.49  5.561 ms  5.440 ms  5.887 ms
 8  any-in-2678.1e100.net (216.239.38.120) [open]  6.662 ms  6.044 ms  6.613 ms
➜  sudo tcptraceroute www.google.com 443
Selected device en0, address 192.168.11.20, port 61944 for outgoing packets
Tracing the path to www.google.com (216.239.38.120) on TCP port 443 (https), 30 hops max
 1  192.168.11.1  0.483 ms  0.358 ms  0.280 ms
 2  lo0-0.bng4.thn-lon.zen.net.uk (51.148.77.132)  7.612 ms  9.251 ms  9.584 ms
 3  * * *
 4  lag-2.br1.thn-lon.zen.net.uk (51.148.73.167)  6.355 ms  5.984 ms  5.490 ms
 5  72.14.223.28  5.437 ms  5.368 ms  5.838 ms
 6  192.178.97.189  5.947 ms  5.588 ms  5.798 ms
 7  142.251.54.25  5.358 ms  5.361 ms  5.564 ms
 8  any-in-2678.1e100.net (216.239.38.120) [open]  5.135 ms  6.296 ms  6.522 ms
➜  sudo tcptraceroute www.google.com 443
Selected device en0, address 192.168.11.20, port 61960 for outgoing packets
Tracing the path to www.google.com (216.239.38.120) on TCP port 443 (https), 30 hops max
 1  192.168.11.1  0.604 ms  0.359 ms  0.382 ms
 2  lo0-0.bng4.thn-lon.zen.net.uk (51.148.77.132)  8.212 ms  9.585 ms  8.106 ms
 3  * * *
 4  lag-1.br1.thn-lon.zen.net.uk (51.148.73.153)  6.032 ms  5.670 ms  6.450 ms
 5  72.14.223.28  5.726 ms  7.713 ms  5.825 ms
 6  192.178.97.189  5.549 ms  5.388 ms  5.963 ms
 7  209.85.248.241  6.513 ms  6.479 ms  6.205 ms
 8  any-in-2678.1e100.net (216.239.38.120) [open]  6.060 ms  6.069 ms  6.536 ms
```

## Home work:


===

# Friday
Unit 2 The Internet

## Preperation

## Unit 2 - Lesson 5: Packets
- Do week 5 mini quiz

- DNS demo: Wireshark
```
Here are some Windows-based nslookup examples you can use in Lesson 6 to demonstrate how DNS works:

Basic DNS Lookup
Shows the IP address(es) for www.google.com.

Lookup a Specific Record Type (e.g., MX for mail)
Displays the mail exchange servers for google.com.

Query a Specific DNS Server
Uses Google’s public DNS server (8.8.8.8) to resolve www.wikipedia.org.

Reverse DNS Lookup (IP to domain)
Shows the domain name associated with the IP address.

View All Available Records
Displays all DNS records for www.microsoft.com.

You can run these commands in Command Prompt on Windows. Each example shows a different aspect of DNS resolution, similar to what the Internet Simulator demonstrates. Would you like a short worksheet or explanation for students to go with these examples?


```

- Lesson: https://studio.code.org/courses/csp-2025/units/2/lessons/5
- Slides: https://docs.google.com/presentation/d/1wjUUTlrbDUvKiV-KDbVmhvUqFujlOkUrzQYJJRIYPCg/template/preview

## Preperation

## Unit 2 - Lesson 6: HTTP and DNS
- Lesson: https://studio.code.org/courses/csp-2025/units/2/lessons/6
- Slides: https://docs.google.com/presentation/d/1fwfC6Wa4BNo0U-WVv6Hsr43y9YZfJMx0AVMUThwxTpg/template/preview
- Internet layers: https://docs.google.com/document/d/1EB_y099r7Qwb3SxFhHK9wSaikoHixL85O4_YdsUBJSY/edit?tab=t.0

## Home work:
- Should have previously read Barron’s: p333-341 - Do the quiz that follows 342-349 (Photo copied already)
- Make sure definitions of router, redundency, fault tolerange is captured: https://docs.google.com/presentation/d/1lz4044iPKTDcAj-ZM7ovFw0w5wfPVm4jQ0ryMab7H1U/template/preview


===


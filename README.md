# ktserver-docker
kyototycoon/ktserver docker http://fallabs.com/kyototycoon/

How to use this repo ?
---------------------
_Example use as persistance memcached_

```
git clone https://github.com/narate/ktserver-docker
cd ktserver-docker
docker build -t username/ktserver .
docker run -d --name ktserver -p 11211:11211 username/ktserver
```
or just run
```
docker run -d --name ktserver -p 11211:11211 narate/ktserver
```

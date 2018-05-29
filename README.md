# ktserver-docker
kyototycoon/ktserver docker http://fallabs.com/kyototycoon/


Example

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

Map volume data
```
docker run -d --name ktserver -p 11211:11211  -v $(pwd)/db:/data/db narate/ktserver
```

Source Repo https://github.com/narate/kyoto

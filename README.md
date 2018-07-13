# Dockerfile for iota-pm

### Build Example

```sh
docker build . -t iota-pm
```

### Run Example

```sh
docker run -u 1005 --net=iri_net -d --name iota-pm \
  -p 8888:8888 \
  -v /tmp/test/iota-pm.conf:/opt/iota-pm/iota-pm.conf \
  -e IOTA_NODE=http://iri:14266 \
  -e HOME=/opt/iota-pm \
  -e REFRESH=5 \
  iota-pm
```

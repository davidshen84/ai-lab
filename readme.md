# readme

An AI notebook based on jupyter lab.

# todo

- [x] add dockerfile
- [x] add docker compose
- [ ] add k8s helm

# docker

1. Edit the `volumes` section according to your host file system.
 - If your docker engine does not have access to a GPU, please remove
   the `resources.reservations` section.
 - Port 8888 is for the jupyter lab web UI.
 - Port 6006-6009 is for tensorboard web UI. You can adjust and
   increase the range if you need more tensorboard instances.

2. Start the container

```
docker compose up --detach --build
```

3. Get the jupyter lab access token

```
docker compose logs lab | grep token
```

4. Access http://localhost:8888 and use the token value to access the lab.

5. Clean the environment.

```
docker compose down
```

**Note**: if you did not map your host directory to the containers
correctly, you may lose you notebooks.

# microservices-with-node-js-and-react

https://www.udemy.com/course/microservices-with-node-js-and-react/

## Install minikube ubuntu

```sh
sudo apt install minikube
```

## Install skaffold

https://skaffold.dev/docs/install/#standalone-binary

### Common Docker commands

```sh
docker build -t tag_name[:version] .            # Build an image based on the dockerfile in the current directory. Tag it as 'fgscaglioni/posts'. When version is not provided than the version is latest.
docker run [image_id or image_tag]              # Create and start a container base on provided image id or tag
docker run -it [image_id or image_tag] [cmd]    # Create and start container, but also override the default command
docker ps                                       # Print out information about all of the running containers
docker exec -it [container_id] [cmd]            # Execute the given command in a running container
docker logs [container_id]                      # Print out logs from the given container
```

## Kubernetes

### Error executing kubectl

- Unable to connect to the server: dial tcp 192.168.49.2:8443: connect: no route to host

  https://stackoverflow.com/questions/48928330/how-to-fix-issue-of-unable-to-connect-to-the-server-eof-kubernetes-kubectl

  ```sh
  minikube start

  ```

### Important Kubernetes terminology

- **Kubernetes cluster** - A collection of nodes + a master to manage them
- **Node** - A virtual machine that will run our containers
- **Pod** - More or less a running container. Technically, a pod can run multiple containers (we won't do this)
- **Deployment** - Monitors a set of pods, make sure they are running and restarts them if they crash
- **Service** - Provides an easy-to-remember URL to access a running container

### Common commands around deployments

```sh
kubectl get deployments                             # List all running deployments
kubectl get pods                                    # List all pods
kubectl get services                                # List all services
kubectl delete pod posts-depl-7ff956544b-2scsg      # Delete some pod
kubectl describe deployment depl_name               # Print out details about a specific deployment
kubectl describe service service_name               # Print out details about a specific deployment
kubectl apply -f config_file_name                   # Create a deployment out of a config file. kubectl apply -f infra/k8s/posts-depl.yaml
kubectl delete deployment depl_name                 # Delete a deployment
kubectl rollout restart deployment depl_name
kubectl logs pod_name                               # Print out logs from pod
```

### Running the project

```sh
# ./install.sh
# ./docker-build-images.sh
# kubectl delete -f ./infra/k8s/
# kubectl apply -f ./infra/k8s/
# minikube ip
# kubectl get services
# kubectl get pods
# kubectl rollout restart deployment
skaffold dev
```

# Important - DO NOT SKIP - Ingress Nginx installation info

## Installation - Minikube (Linux)

```sh
minikube addons enable ingress
```

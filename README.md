# TEST 
The master branch contains a NOT working version of our app, please fix it!  

If you don't have a working kubernetes or minikube cluster you can use an online environment like https://www.katacoda.com/petermbenjamin/scenarios/kubernetes-playground

### GIT 
0. Clone https://github.com/tuxerrante/spring-boot-docker-demo.git
1. Create a new branch from master  
2. Check the last commit author
3. Check the status of the repo


### MVN
1. Describe briefly the POM
2. Check if there is some issue

### DOCKER
1. build the docker image from the root folder, tag it as "spring-demo"
2. fix the blocking issues
3. Improve the image as more as you can
4. Run the container
5. Look at the logs
6. Enter the container, check for: current dir, list all files, exposed ports

### KUBERNETES
1. Describe briefly the deployment.yml
2. Fix major issues
3. Deploy it and check if it works fine

Help 1: kubectl run -it --rm --restart=Never busybox --image=gcr.io/google-containers/busybox sh
Help 2:https://kubernetes.io/docs/tasks/debug-application-cluster/debug-service/#does-any-service-exist-in-dns

## uML
[![AGMETEOR](https://circleci.com/gh/AGMETEOR/uML.svg?style=svg)](https://app.circleci.com/pipelines/github/AGMETEOR/uML)

A Flask app that uses a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

## 1.0 Development

### 1.1 Without Docker or Kubernetes
- Create a virtual env

```make setup```

- Start virtual env

```source ~/.devops/bin/activate```

- Install dependencies

```make install```

- Run tests

```make test```

- Linting

```make lint```

### 1.2 Using docker (reccommended)

Built docker hub image repo > `https://hub.docker.com/r/agmeteor/uml`

```$ ./run_docker.sh```

NB: You need to set up a volume for the docker container to put logs. Otherwise, a volume within the project is used.

### 1.3 Deploy to Kubernetes cluster

Using the image generated from step 1.2, you launch a container on pod with a kubernetes cluster

```$ ./run_kubernetes.sh```

## 2.0 Development on AWS Cloud 9

In case of space errors on the EC2 machine, run ```$ ./resize.sh <volume size>```
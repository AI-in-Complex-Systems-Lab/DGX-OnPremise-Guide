# Instructions to connect DGX on prem cloud resources:

## 1. SSH Connection and Setup

> ssh ho598796@dgx-head01.its.albany.edu

```bash
cd
cd ~/.config
mkdir enroot
cd enroot
nano .credentials
```

- From inside your /enroot/ directory, create a .credentials file and format it as such.
- [How to get API keys?](https://albany.atlassian.net/wiki/spaces/askit/pages/52331279)

```md
# NVIDIA GPU Cloud (both endpoints are required)
machine nvcr.io login $oauthtoken password APIKEY
machine authn.nvidia.com login $oauthtoken password APIKEY
```

## 2. Trasnfer the scripts

- Use VSCode Remote Access to access your files on dgx-head01

- Transfer the scripts to your base directory
    - jupyter.sh
    - run.sh


# Running Jupyter

## 1. Start a job for running Jupyter

> sh run.sh

- It will print which node is running the job (NODEID: dgx##)

## 2. Open a new terminal and leave it open to tunnel the port

> ssh -N -L 8008:207.211.163.76:8008 NETID@dgx-head01.its.albany.edu

## 3. Go to this address

```md
http://[NODEID].its.albany.edu:8008/lab
```
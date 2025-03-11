# Instructions to connect DGX on prem cloud resources:


## Setup

### 1. SSH Connection and Setup
```bash
ssh [NETID]@dgx-head01.its.albany.edu
```

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
machine nvcr.io login $oauthtoken password [APIKEY]
machine authn.nvidia.com login $oauthtoken password [APIKEY]
```

### 2. Transfer the scripts

- Use VSCode Remote Access to access your files on dgx-head01
    - [NETID]@dgx-head01.its.albany.edu

- Copy the scripts to your base directory
    - jupyter.sh
    - run.sh


## Running Jupyter

### 1. Start a job to run Jupyter

```bash
ssh [NETID]@dgx-head01.its.albany.edu

sh run.sh
```

- It will print which node is running the job (NODEID: dgx##)

### 2. Open a new terminal and leave it open to tunnel the port

> ssh -N -L 8008:207.211.163.76:8008 [NETID]@dgx-head01.its.albany.edu

### 3. Go to this address to access Jupyter

```md
http://[NODEID].its.albany.edu:8008/lab
```

### Extra. See job status

- If you would like to see the status of your job again:

```bash
module load slurm
squeue -u $USER
```

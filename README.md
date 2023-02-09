# AUTOMATIC1111/stable-diffusion-webui for Docker
This repository is to run AUTOMATIC1111/stable-diffusion-webui on Linux Docker

## Prequirement
- docker compose V2 (install from [here](https://github.com/docker/compose/releases), V1 cannot work)
- nvidia-container-toolkit
- set UID and GID as environment variable (or re-write docker-compose.yml directly)

## Build & Run
Run in your host machine.
```sh
docker compose build
docker compose up
docker compose exec -it bash
```

Run in your container.
```
# Install Stable Diffusion 2
wget -o /home/${USERS}/stable-diffusion-webui/models/StableDiffusion/768-v-ema.ckpt https://huggingface.co/stabilityai/stable-diffusion-2/resolve/main/768-v-ema.ckpt
wget -o /home/${USERS}/stable-diffusion-webui/models/StableDiffusion/768-v-ema.yaml https://raw.githubusercontent.com/Stability-AI/stablediffusion/main/configs/stable-diffusion/v2-inference-v.yaml
./webui.sh --listen --port 1024
```

## Misc
I tested this code on Ubuntu 20.04, NVIDIA-SMI 525.85.12, Driver Version: 525.85.12, CUDA Version: 12.0.


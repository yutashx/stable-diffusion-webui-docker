FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel

ARG USER=ubuntu
ARG GROUP=ubuntu
ARG UID=1000
ARG GID=1000

RUN apt-get update
RUN apt-get install -y git wget vim python3 python3-venv libgl1-mesa-dev libglib2.0-0 libsm6 libxrender1 libxext6

WORKDIR /home/${USER}
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
RUN chown -R $UID:$GID /home/${USER}

USER ${USER}
WORKDIR /home/${USER}/stable-diffusion-webui

# Stable Diffusion 2, but below commands are too heavy to include docker image
#RUN wget -o /home/${USERS}/stable-diffusion-webui/models/StableDiffusion/768-v-ema.ckpt https://huggingface.co/stabilityai/stable-diffusion-2/resolve/main/768-v-ema.ckpt
#RUN wget -o /home/${USERS}/stable-diffusion-webui/models/StableDiffusion/768-v-ema.yaml https://raw.githubusercontent.com/Stability-AI/stablediffusion/main/configs/stable-diffusion/v2-inference-v.yaml
#RUN ./webui.sh --listen --port 1024

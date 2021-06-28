ARG BASE_IMG
FROM $BASE_IMG

# rustup component add rust-src
# sudo apt install jupyter-notebook cmake build-essential
# cargo install evcxr_jupyter
# evcxr_jupyter --install

RUN apt-get -yqq update
RUN rustup component add rust-src
RUN apt-get install -y cmake build-essential python3-pip
RUN pip3 install -y jupyterlab
RUN cargo install evcxr_jupyter
RUN evcxr_jupyter --install

EXPOSE 8888

COPY ci/jupyter_cfg/themes.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings
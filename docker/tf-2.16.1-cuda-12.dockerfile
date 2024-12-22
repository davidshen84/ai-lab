from tensorflow/tensorflow:2.16.1-gpu-jupyter

run apt update && \
    apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting
run sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

copy requirements-2.16.txt requirements.txt
run pip install --upgrade pip
run --mount=type=cache,target=/root/.cache/pip \
    pip install --upgrade --requirement requirements.txt

entrypoint ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/notebooks --ip 0.0.0.0 --no-browser --allow-root"]

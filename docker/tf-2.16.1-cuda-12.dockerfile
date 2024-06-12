from tensorflow/tensorflow:2.16.1-gpu-jupyter

run apt update && \
    apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting
run sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

run pip install --upgrade pip
copy requirements.txt .
run pip install --upgrade --requirement requirements.txt

entrypoint ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/notebooks --ip 0.0.0.0 --no-browser --allow-root"]

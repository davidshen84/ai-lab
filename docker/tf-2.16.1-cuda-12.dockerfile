from tensorflow/tensorflow:2.16.1-gpu-jupyter

run pip install --upgrade pip
copy requirements.txt .
run pip install --upgrade --requirement requirements.txt --find-link https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

entrypoint ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]

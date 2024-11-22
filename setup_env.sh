source ~/anaconda3/etc/profile.d/conda.sh

conda create -n openrlhf python=3.10 -y
conda activate openrlhf
which python
which pip

conda install pytorch==2.3.0 torchvision==0.18.0 torchaudio==2.3.0 pytorch-cuda=12.1 -c pytorch -c nvidia -y
# pip install torch==2.3.0 torchvision==0.18.0 torchaudio==2.3.0 --index-url https://download.pytorch.org/whl/cu121
pip uninstall xgboost transformer_engine flash_attn -y
pip install -e .

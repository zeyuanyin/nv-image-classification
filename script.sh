
conda activate torch
nvidia-smi


python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 256 --lr 0.256 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --warmup 5 /home/zeyuan.yin/imagenet/

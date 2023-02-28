#!/bin/bash
#SBATCH --job-name=1GPU                # Job name
#SBATCH --output=output/myjob-%j.out       # Standard output and error log
#SBATCH --nodes=1                       # Run all processes on a single node
#SBATCH --ntasks=1                      # Run on a single CPU
#SBATCH --mem=40G                       # Total RAM to be used
#SBATCH --cpus-per-task=64              # Number of CPU cores
#SBATCH --gres=gpu:1                    # Number of GPUs (per node)
#SBATCH -p long                         # Use the gpu partition
#SBATCH --time=10-00:00:00                # Specify the time needed for your experiment

conda activate torch
nvidia-smi


python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 256 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_256' /home/zeyuan.yin/imagenet/

# hpc:
# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 128 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_128' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 200 --lr 0.200 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_200_scale_3' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 200 --lr 0.200 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_200_scale_3' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 1024 --lr 1.024 --warmup 5 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --warmup 5 wandb_name 'kd_256' /home/zeyuan.yin/imagenet/


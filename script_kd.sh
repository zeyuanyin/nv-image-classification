conda activate torch
nvidia-smi


python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 256 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_256' /home/zeyuan.yin/imagenet/

# hpc:
# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 128 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_128' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 200 --lr 0.200 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_200_scale_3' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 200 --lr 0.200 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_200_scale_3' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --batch-size 1024 --lr 1.024 --warmup 5 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --warmup 5 wandb_name 'kd_256' /home/zeyuan.yin/imagenet/


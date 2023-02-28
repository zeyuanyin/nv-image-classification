conda activate torch
nvidia-smi


python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 256 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_256' /home/zeyuan.yin/imagenet/


# ciai:
# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 256 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_256_scale_3' /home/zeyuan.yin/imagenet/ --loss_scale 3

python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 256 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_256_scale_9' /home/zeyuan.yin/imagenet/ --loss_scale 9


# hpc:
# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 128 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_128' /home/zeyuan.yin/imagenet/

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 128 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_128_scale_3' /home/zeyuan.yin/imagenet/ --loss_scale 3

# python ./main.py --arch resnet50 --label-smoothing 0.1 --epochs 90 --data-backend pytorch --optimizer-batch-size 1024  --warmup 5 --batch-size 128 --lr 1.024 --lr-schedule cosine --weight-decay 3e-5 --momentum 0.875 --wandb_name 'kd_128_scale_9' /home/zeyuan.yin/imagenet/ --loss_scale 9



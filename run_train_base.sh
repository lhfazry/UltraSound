#!/bin/bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --data_dir=/workspace/EchoNet \
    --pretrained=pretrained/swin_base_patch244_window877_kinetics400_22k.pth \
    --ckpt_path=lightning_logs/ultraswin/version_26/checkpoints/epoch\=4-step\=8955.ckpt \
    --batch_size=4 \
    --num_workers=4 \
    --accelerator=gpu \
    --variant=base \
    --max_epoch=100
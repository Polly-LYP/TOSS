set -x

read -r -d '' training_commands <<EOF
./train/examples/train_selective_sft.py \
    --seed 42 \
    --max_len 2048 \
    --dataset path_to/datasets/RedOrca/train.jsonl \
    --topp 1. \
    --dataset_probs 1. \
    --train_batch_size 64 \
    --micro_train_batch_size 1 \
    --max_samples 112000\
    --pretrain meta-llama/Meta-Llama-3-8B-Instruct \
    --save_path model_output_path\
    --save_steps -1 \
    --logging_steps 1 \
    --eval_steps -1 \
    --zero_stage 1 \
    --max_epochs 2 \
    --bf16 \
    --lr_scheduler constant \
    --learning_rate 1e-5 \
    --gradient_checkpointing \
    --flash_attn \
    --lora_rank 16 \
    --lora_alpha 16 \
    --target_modules q_proj v_proj \
    --use_wandb \
    --exp_name selective_finetuning \
    --selected_label_path path_to/selected_label.pt
EOF

if [[ ${1} != "slurm" ]]; then
    export PATH=$HOME/.local/bin/:$PATH
    deepspeed --include localhost:4,5 --master_port 29523 $training_commands
fi
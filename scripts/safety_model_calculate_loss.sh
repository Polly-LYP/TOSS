model_name_or_path=path_to/safety_model
train_data=path_to/datasets/RedOrca/train_processed.jsonl
BATCH_SIZE_PER_GPU=4
NUM_GPUS=2

accelerate launch \
    --num_processes $NUM_GPUS \
    --config_file ./train/examples/fsdp_configs/fsdp_config.yaml \
    --main_process_port 29501 \
    ./train/examples/calculate_token_loss.py \
    --model_name_or_path $model_name_or_path \
    --tokenizer_name $model_name_or_path \
    --train_file $train_data \
    --max_seq_length 2048 \
    --per_device_train_batch_size $BATCH_SIZE_PER_GPU \
    --num_train_epochs 1 \
    --reduce_loss sum \
    --with_prompt_token False \
    --overwrite_cache \
    --loss_out_path path_to/loss_out
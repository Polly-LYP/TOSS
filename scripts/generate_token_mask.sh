utility_model=path_to/utility_model
safety_model=path_to/safety_model
train_data=path_to/datasets/RedOrca/train.jsonl
data_prop=0.2
select_token_level=global
loss_path=path_to_loss
label_path=output_mask_path

python ./train/examples/generate_token_masking.py \
    --base_model_name_or_path $utility_model \
    --ref_model_name_or_path $safety_model \
    --tokenizer_name_or_path $utility_model \
    --train_data $train_data \
    --data_prop $data_prop \
    --select_token_level $select_token_level \
    --loss_path $loss_path \
    --label_path $label_path




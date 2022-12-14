python run_translation.py \
    --model_name_or_path google/flan-t5-small \
    --do_train \
    --do_eval \
    --num_train_epochs 10 \
    --source_lang en \
    --target_lang no \
    --source_prefix "translate English to Norwegian: " \
    --dataset_name bible_para \
    --dataset_config_name en-no \
    --output_dir /tmp/flan-t5-small_en-no \
    --per_device_train_batch_size=64 \
    --per_device_eval_batch_size=32 \
    --overwrite_output_dir \
    --predict_with_generate \
    --save_total_limit 2 \
    --push_to_hub \
    --predict_with_generate \
    --overwrite_output_dir False \
    --logging_steps 100

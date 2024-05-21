mkdir ./dataset/Qwen-7B/

input_file=./dataset/train-00000-of-00001-a09b74b3ef9c3b56.parquet 
tokenizer=/root/llmtest/weights/Qwen1.5-7B-Chat

python ./tools/preprocess_data.py \
    --input ${input_file} \
    --tokenizer-name-or-path  ${tokenizer}\
    --output-prefix ./dataset/Qwen-7B/translation \
    --tokenizer-type PretrainedFromHF \
    --seq-length 4096 \
    --workers 4 \
    --log-interval 1000
# Start the Ray cluster for a single node
ray start --head

# finetune script 
python finetune_rag.py \
    --data_dir Health_training_data \
    --output_dir model_checkpoints \
    --model_name_or_path facebook/rag-token-base \
    --model_type rag-token \
    --index_name custom \
    --passage_path Health_KB/... \
    --index_path Health_KB/...faiss \
    --csv_path Health_KB/...csv \

# Stop the ray cluster 
ray stop 

export CUDA_VISIBLE_DEVICES=0,1
ray start --head --node-ip-address 127.0.0.1 --num-gpus 2 --dashboard-host 0.0.0.0 --dashboard-port 50000  --metrics-export-port 50001
ray job submit \
    --runtime-env-json='{"working_dir": "./"}' \
    -- python3 playground/orz_7b_grpo.py \

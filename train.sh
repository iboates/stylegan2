python stylegan2/run_training.py \
--num-gpus 2 \
--data-dir tfrecord64 \
--dataset maps \
--config=config-f \
--mirror-augment=true \
--total-kimg 50000 \
--metrics fid50k
torchrun train.py \
--do_train \
--output_dir gpu_saved_models_turn2_28_01 \
--save_dir gpu_saved_models_turn2_28_01 \
--load_test_op_data_path cls_score_test_state_update_predictor_output.json \
--model_name_or_path pretrained_models/albert_base/ \
--n_epochs 5 \
--local_rank 0 \
--data_root data/mwz2.2/ \
--train_data train_dials.json \
--dev_data dev_dials.json \
--test_data dev_dials.json \
--ontology_data schema.json \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--enc_lr 2e-5 \
--base_lr 1e-3 \
--turn 2 \
--n_history 1 \
--eval_step 10000
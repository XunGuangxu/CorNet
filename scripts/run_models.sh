#!/usr/bin/env bash

DATA_PATH=/p/realai/guangxu/2020xmtc/deep_data

DATASET=EUR-Lex
#DATASET=AmazonCat-13K
#DATASET=Wiki-500K

#MODEL=XMLCNN
#MODEL=CorNetXMLCNN
#MODEL=BertXML
#MODEL=CorNetBertXML
#MODEL=MeSHProbeNet
MODEL=CorNetMeSHProbeNet
#MODEL=AttentionXML
#MODEL=CorNetAttentionXML

python main.py --data-cnf configure/datasets/$DATASET.yaml --model-cnf configure/models/$MODEL-$DATASET.yaml

python evaluation.py \
--results $DATA_PATH/$DATASET/results/$MODEL-$DATASET-labels.npy \
--targets $DATA_PATH/$DATASET/test_labels.npy \
--train-labels $DATA_PATH/$DATASET/train_labels.npy

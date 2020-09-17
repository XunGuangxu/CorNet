# CorNet
[Correlation Networks for Extreme Multi-label Text Classification](https://dl.acm.org/doi/pdf/10.1145/3394486.3403151)

## Prerequisites

* python==3.6.3
* pytorch==1.2.0
* torchgpipe==0.0.5
* click==7.0
* ruamel.yaml==0.16.5
* numpy==1.16.2
* scipy==1.2.1
* scikit-learn==0.20.3
* gensim==3.7.2
* nltk==3.2.4
* tqdm==4.31.1
* joblib==0.13.2
* logzero==1.5.0

## Datasets

* [EUR-Lex](https://drive.google.com/file/d/15WSOexahaC-5kIcraYReFXR84TSuTejc/view?usp=sharing)
* [AmazonCat-13K](https://drive.google.com/file/d/11Gfs4sazeV6u_lhC0Iw_cvC9-kK9KiXf/view?usp=sharing)
* [Wiki-500K](https://drive.google.com/file/d/1Hgx7RTtkJKLJePce3PvRyOTGBKQh3odP/view?usp=sharing)

Pretrained Word Embeddings in gensim format

* [GloVe embeddings (840B,300d)](https://drive.google.com/file/d/1A_jGmpsq7dVAN0-eHZ3RZaPNL-ZdViIr/view?usp=sharing)

## Run

Preprocess (the EUR-Lex dataset is already tokenized in advance)
```bash
./scripts/preprocess_eurlex.sh
```
or (the other datasets need to be tokenized using NLTK)
```bash
./scripts/preprocess_others.sh
```

Train and evaluate
```bash
./scripts/run_models.sh
```

## Baselines

The codes for the baseline models are adapted from the following repositories: [XML-CNN](https://github.com/castorini/hedwig), [BERT](https://github.com/huggingface/transformers), and [AttentionXML](https://github.com/yourh/AttentionXML).

<div align="center">

# [ICLR'26] Token-level Data Selection for Safe LLM Fine-tuning

Official PyTorch implementation of our paper:

**Token-level Data Selection for Safe LLM Fine-tuning**

[Yanping Li](https://openreview.net/profile?id=%7EYanping_Li4) · [Zhening Liu](https://www.liuzhening.top) · [Zijian Li](https://zli999.github.io/zijianli.github.io/) · [Zehong Lin](https://zhlinup.github.io/) · [Jun Zhang](https://eejzhang.people.ust.hk/)

[[ArXiv Preprint](https://arxiv.org/abs/2603.01185)]

</div>

## :fire: News

* **March 29, 2026**: 🔥 We release our Python code and checkpoints for TOSS presented in our paper. Have a try!

* **Jan 23, 2026**: 🌟 Our paper has been accepted by ICLR 2026! 🎉 

## :star: Overview
Fine-tuning large language models (LLMs) on custom datasets has become a standard approach for adapting these models to specific domains and applications. However, recent studies have shown that such fine-tuning can lead to significant degradation in the model's safety. Existing defense methods operate at the sample level and often suffer from an unsatisfactory trade-off between safety and utility. To address this limitation, we perform a systematic token-level diagnosis of safety degradation during fine-tuning. Based on this, we propose *token-level data selection for safe LLM fine-tuning (TOSS)*, a novel framework that quantifies the safety risk of each token by measuring the loss difference between a safety-degraded model and a utility-oriented model. This token-level granularity enables accurate identification and removal of unsafe tokens, thereby preserving valuable task-specific information. In addition, we introduce a progressive refinement strategy, TOSS-Pro, which iteratively enhances the safety-degraded model's ability to identify unsafe tokens. Extensive experiments demonstrate that our approach robustly safeguards LLMs during fine-tuning while achieving superior downstream task performance, significantly outperforming existing sample-level defense methods.
<p align="center">
  <img src="assets/pipeline.png" alt="Pipeline">
</p>

## :sparkles:Performance Illustration
We illustrate the safety and utility performance of our method. For more details, please check the official paper.
<p align="center">
  <img src="assets/performance_1.png" alt="performance on safety and utility benchmarks">
</p>
<p align="center">
  <img src="assets/performance_2.png" alt="Visualization of models' output">
</p>

## ✨ Quick Start

After cloning the repository, follow these steps to train and run inference.

### Requirements

Install dependencies with `pip install -r requirements.txt`.
Install local packages with:

```bash
pip install -e ./train/OpenRLHFBase
pip install -e ./train
```


### Train
- Train reference model

Utilize the scripts `./scripts/train_safety_model.sh` to train the safety-degrading model.

Utilize the scripts `./scripts/train_utility_model.sh` to train the utility-oriented model.

- Token selection

Utilize the scripts `./scripts/safety_model_calculate_loss.sh` and `./scripts/utility_model_calculate_loss.sh` to obtain the loss files.

Utilize the scripts `./scripts/generate_token_mask.sh` to generate the token masking matrix.

- Token-level selective training

Utilize the scripts `./scripts/selective_finetuning.sh` to perform selective fine-tuning.

### Evaluation
Our evaluation method follows [SEAL](https://github.com/hanshen95/SEAL)

### Models
We also provide the models trained with our method on Hugging Face.
| Model | Link |
| --- | --- |
| safety-degrading model | https://huggingface.co/Polly1231/safety_degrading_model |
| utility-oriented model | https://huggingface.co/Polly1231/utility_oriented_model |
| TOSS | https://huggingface.co/Polly1231/TOSS |

## 🤝 Acknowledgments
We would like to appreciate the following fantastic open-source works contributing to the implementation.
- [SEAL](https://github.com/hanshen95/SEAL)
- [TokenCleaning](https://github.com/UCSC-REAL/TokenCleaning)

## ✏️ Citation
If you find TOSS useful, please cite our paper:

```
@article{li2026token,
  title={Token-level Data Selection for Safe LLM Fine-tuning},
  author={Li, Yanping and Liu, Zhening and Li, Zijian and Lin, Zehong and Zhang, Jun},
  journal={arXiv preprint arXiv:2603.01185},
  year={2026}
}
```

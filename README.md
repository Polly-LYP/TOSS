# [ICLR26] Token-level Data Selection for Safe LLM Fine-tuning
This is the official PyTorch implementation of our **ICLR 26** paper: 

**Token-level Data Selection for Safe LLM Fine-tuning**

[Yanping Li](https://openreview.net/profile?id=%7EYanping_Li4), [Zhening Liu](https://www.liuzhening.top), [Zijian Li](https://zli999.github.io/zijianli.github.io/), [Zehong Lin](https://zhlinup.github.io/), [Jun Zhang](https://eejzhang.people.ust.hk/)

[[ArXiv Preprint](https://arxiv.org/abs/2603.01185)]

## :fire: News

* **March 29, 2026**: 🔥 We release our Python code and checkpoints for TOSS presented in our paper. Have a try!

* **Jan 23, 2026**: 🌟 Our paper has been accepted by ICLR 2026! 🎉 

## :star:Overview
Fine-tuning large language models (LLMs) on custom datasets has become a standard approach for adapting these models to specific domains and applications. However, recent studies have shown that such fine-tuning can lead to significant degradation in the model's safety. Existing defense methods operate at the sample level and often suffer from an unsatisfactory trade-off between safety and utility. To address this limitation, we perform a systematic token-level diagnosis of safety degradation during fine-tuning. Based on this, we propose \textit{token-level data selection for safe LLM fine-tuning (TOSS)}, a novel framework that quantifies the safety risk of each token by measuring the loss difference between a safety-degraded model and a utility-oriented model. This token-level granularity enables accurate identification and removal of unsafe tokens, thereby preserving valuable task-specific information. In addition, we introduce a progressive refinement strategy, TOSS-Pro, which iteratively enhances the safety-degraded model's ability to identify unsafe tokens. Extensive experiments demonstrate that our approach robustly safeguards LLMs during fine-tuning while achieving superior downstream task performance, significantly outperforming existing sample-level defense methods.
<p align="center">
  <img src="assets/pipeline.png" alt="Pipeline">
</p>
<!-- ![Pipeline](assets/pipeline.png) -->

## :sparkles:Performance Illustration
We illustrate the safety and utility performance of our method. For more details, please check the official paper.
<p align="center">
  <img src="assets/performance_1.png" alt="performance on safety and utility benchmarks">
</p>
<!-- ![performance on safety and utility benchmarks](assets/performance_1.png) -->
<p align="center">
  <img src="assets/performance_2.png" alt="Visualization of models' output">
</p>
<!-- ![Visualization of models' output](assets/performance_2.png) -->

## ✨ Quick Start

After cloning the repository, follow these steps to train and run inference.

### Requirements

Install dependencies with `pip install -r requirements.txt`.

### Train
- Train reference model
Utilize the scripts `./scripts/train_safety_model.sh` to train the safety-degrading model.
Utilize the scripts `./scripts/train_utility_model.sh` to train the utility-oriented model.
- Token selection
Utilize the scripts `./scripts/safety_model_calculate_loss.sh` and `./scripts/utlity_model_calculate_loss.sh` to obtain the loss files.
Utilize the scripts `./scripts/generate_token_mask.sh` to generate the token masking matrix.
- Token-level selective training
Utilize the scripts `./scripts/selective_finetuning.sh` to perform selective fine-tuning.

### Evaluation
Our evaluation method follows [SEAL](https://github.com/hanshen95/SEAL)

## 🤝 Acknowledgments
We would like to appreciate the following fantastic open-source works contributing to the implementation.
- [SEAL](https://github.com/hanshen95/SEAL)
- [TokenCleaning](https://github.com/UCSC-REAL/TokenCleaning)

## ✏️ Citation



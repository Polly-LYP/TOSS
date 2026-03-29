# [ICLR26] Token-level Data Selection for Safe LLM Fine-tuning
This is the official PyTorch implementation of our **ICLR 26** paper: 

**Token-level Data Selection for Safe LLM Fine-tuning**

[Yanping Li], [Zhening Liu](https://www.liuzhening.top), [Zijian Li](https://zli999.github.io/zijianli.github.io/), [Zehong Lin](https://zhlinup.github.io/), [Jun Zhang](https://eejzhang.people.ust.hk/)

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
  <img src="assets/RD.png" alt="R-D performance on InStereo2K dataset">
</p>
<p align="center">
  <img src="assets/vis.png" alt="Compression results visualization">
</p>
<!-- ![Compression results visualization](assets/vis.png) -->

## ✨ Quick Start

After cloning the repository, follow these steps to train and run inference.

### Requirements

Install dependencies with `pip install -r requirements.txt`.

### Training

### Evaluation

## 🤝 Acknowledgments
We would like to appreciate the following fantastic open-source works contributing to the implementation.

## ✏️ Citation



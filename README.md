# 🤖 Auto-Commit

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub issues](https://img.shields.io/github/issues/mateusmoutinho/Auto-Commit)](https://github.com/mateusmoutinho/Auto-Commit/issues)
[![GitHub stars](https://img.shields.io/github/stars/mateusmoutinho/Auto-Commit)](https://github.com/mateusmoutinho/Auto-Commit/stargazers)

Auto-Commit is a streamlined tool that generates intelligent commit messages for your repositories using AI.

## ✨ Features

- 🧠 AI-powered commit message generation
- 🚀 Simple integration with git workflow
- 🔄 Works with any git repository

## 🔧 Installation

### Prerequisites

- [VibeScript](https://github.com/OUIsolutions/VibeScript) installed on your system

### Step 1: Install VibeScript

Visit the [VibeScript repository](https://github.com/OUIsolutions/VibeScript) and download the appropriate version for your operating system from the [releases page](https://github.com/OUIsolutions/VibeScript/releases/tag/0.2.0).

### Step 2: Configure an AI Model

Configure a VibeScript model. If you don't have one set up:

```bash
vibescript configure_model --model grok-2-latest --url https://api.x.ai/v1/chat/completions --key "your_api_key"
```

### Step 3: Clone the Repository

```bash
git clone https://github.com/mateusmoutinho/Auto-Commit.git
```

### Step 4: Add Auto-Commit to VibeScript Path

```bash
vibescript add_script --file Auto-Commit/auto_commit.lua autocommit
```

## 📝 Usage

### Suggest a Commit Message

To get an AI-generated commit message suggestion:

```bash
vibescript autocommit suggest
```

### Make a Commit Automatically

To generate a commit message and commit changes in one step:

```bash
vibescript autocommit commit
```

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
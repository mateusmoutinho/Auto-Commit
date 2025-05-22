Auto Commit its a quick hack to generate commit menssages for you 
repos 

### Instalation
for instalation follow these steps 

step1: install [vibescript](https://github.com/OUIsolutions/VibeScript) 
go to the [vibescript](https://github.com/OUIsolutions/VibeScript) repo, and install
vibescript for your os based on the [releases](https://github.com/OUIsolutions/VibeScript/releases/tag/0.2.0)

step2: configure a model
configure a vibescript model , if you dont have any model configured 
```bash
vibescript configure_model --model grok-2-latest --url https://api.x.ai/v1/chat/completions --key "your key"
```

step3: clone the repo
```bash
git clone https://github.com/mateusmoutinho/Auto-Commit.git
```
step3: add auto_commit to vibescript path 

```bash
vibescript add_script --file Auto-Commit/auto_commit.lua  autocommit
```

### Usage 
you can use autocommit for sugest a commit name, or to commit for you 
#### Sugest commit name 
these will show a sugestion 
```bash
vibescript autocommit sugest
```
#### Make the Commit 

```bash
vibescript autocommit commit
```
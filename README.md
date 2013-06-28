# Altria::Pipeline
Altria pipeline builder plugin.  
This plugin lets your job to kick another job after finished.

## Installation
```
# Gemfile.local
gem "altria-pipeline", git: "git@github.com:r7kamura/altria-pipeline.git"
```

## Usage
1. Fill in the next job's IDs at your job's setting page
2. Altria will kick the next jobs when the previous job finished successfully

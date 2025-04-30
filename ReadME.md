# 🎤 Concert‑Tour RAG Assistant

A Streamlit‑based Retrieval‑Augmented Generation (RAG) app for ingesting and querying domain‑specific concert tour documents.  
If the answer isn’t in your docs but looks like a band/artist query, it does a live web lookup via SerpAPI.

## Features

- **Document ingestion**: Summarizes and indexes uploaded `.txt` files.  
- **Contextual Q&A**: Answers strictly from ingested docs.  
- **Live web fallback**: For artist/band queries, fetches upcoming tour info in real time.  
- **Ngrok integration**: Exposes your local Streamlit server via a public URL.
- **Retain History**: Keeps the JSON-like conversations for model training/finetuning.

## Important
Due to hardware limitations (no access to own gpu, I had to host the model deployment via Google Colab notebooks.
If you are hosting locally, you don't need access to Ngrok to have a public link for streamlit, however since we
are working with Google notebook, there is no other alternative, other than having your own gpu.)
Also, I didn't share my .env file, rather I have a placeholder, when you run the code you should be prompted
to enter your API keys to keep it as an environment variable. If you want, you can add .env file, however this would 
require some minor tinkering with my current code.
I added requirements.txt as a formality, the pip install command in the notebook should handle everything. 
I put the output of the pip command execution from my working with the notebook as an example, to show that at least
on my machine, there are no dependency issues. If there are dependency issues on your end, please make sure that all 
libraries are upgraded to the latest version. If this still doesn't work, I can record a video footage of the 
application in working process.


## Requirements
- **API keys**:
  - `OPENAI_API_KEY` – your OpenAI API key  
  - `SERPAPI_API_KEY` – your SerpAPI key

- **Public URL** (choose one method):
  1. **Ngrok** (recommended for Colab/notebooks):  
     - `NGROK_API_KEY` – your ngrok authtoken  
  2. **Local hosting**:  
     - Run on a machine with GPU/CPU to serve Streamlit directly.
## Setup

## Installation

### Clone the Repository

```bash
git clone <https://github.com/badalyandavit/Agentic-RAG-for-Tour-Concerts>
cd <Agentic-RAG-for-Tour-Concerts>
```

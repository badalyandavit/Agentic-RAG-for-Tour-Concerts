# 🎤 Concert‑Tour RAG Assistant

A Streamlit‑based Retrieval‑Augmented Generation (RAG) app for ingesting and querying domain‑specific concert tour documents.  
If the answer isn’t in your docs but looks like a band/artist query, it does a live web lookup via SerpAPI.

## Features

- **Document ingestion**: Summarizes and indexes uploaded `.txt` or `.md` files.  
- **Contextual Q&A**: Answers strictly from ingested docs.  
- **Live web fallback**: For artist/band queries, fetches upcoming tour info in real time.  
- **Ngrok integration**: Exposes your local Streamlit server via a public URL.
- **Retain History**: Keeps the JSON-like conversations for model training/finetuning.

## Requirements
- **API keys**:
  - `OPENAI_API_KEY` – your OpenAI API key  
  - `SERPAPI_API_KEY` – your SerpAPI key

Due to hardware limitations (no access to own gpu, I had to host the model deployment via Google Colab notebooks.
If you are hosting locally, you don't need access to Ngrok to have a public link for streamlit, however since we
are working with Google notebook, there is no other alternative, other than having your own gpu.)
Also, I didn't share my .env file, rather I have a placeholder, when you run the code you should be prompted
to enter your API keys to keep it as an environment variable. If you want, you can add .env file, however this would 
require some minor tinkering with my current code.
- **Public URL** (choose one method):
  1. **Ngrok** (recommended for Colab/notebooks):  
     - `NGROK_API_KEY` – your ngrok authtoken  
  2. **Local hosting**:  
     - Run on a machine with GPU/CPU to serve Streamlit directly.
## Setup

## Installation

### 1. Clone the Repository

```bash
git clone <https://github.com/badalyandavit/Agentic-RAG-for-Tour-Concerts>
cd <Agentic-RAG-for-Tour-Concerts>
```

### 2. Install Dependencies

You can install the required packages in one of two ways:

- **Manually**, using your package manager of choice:  
  ```bash
  pip install -r requirements.txt
  # or
  conda install --file requirements.txt
  ```

- **Automatically**, by running the included setup script (although I haven't tried this with Google Colab, I don't know if Colab supports this, since we don't necessarily generate a process_id):  
  ```bash
  ./run.sh
  ```
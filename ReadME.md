# 🎤 Concert‑Tour RAG Assistant

A Streamlit‑based Retrieval‑Augmented Generation (RAG) app for ingesting and querying domain‑specific concert tour documents.  
If the answer isn’t in your docs but looks like a band/artist query, it does a live web lookup via SerpAPI.

## Features

- **Document ingestion**: Summarizes and indexes uploaded `.txt` or `.md` files.  
- **Contextual Q&A**: Answers strictly from ingested docs.  
- **Live web fallback**: For artist/band queries, fetches upcoming tour info in real time.  
- **Ngrok integration**: Exposes your local Streamlit server via a public URL.

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

### 1. Clone the Repository

```bash
git clone <your-repo-url>
cd <repo-dir>
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
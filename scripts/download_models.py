from huggingface_hub import snapshot_download

"""# Téléchargement de Mistral-7B
snapshot_download(
    repo_id="mistralai/Mistral-7B-v0.1",
    local_dir="models/rtx3090/mistral-7b",
    local_dir_use_symlinks=False
)"""

# Téléchargement de LLaMA 3 8B
snapshot_download(
    repo_id="meta-llama/Meta-Llama-3-8B",
    local_dir="models/rtx3090/llama3-8b",
    local_dir_use_symlinks=False
)
"""
# Téléchargement de DeepSeek Coder 6.7B
snapshot_download(
    repo_id="deepseek-ai/deepseek-coder-6.7b-base",
    local_dir="models/rtx3090/deepseek-coder-6.7b",
    local_dir_use_symlinks=False
)"""
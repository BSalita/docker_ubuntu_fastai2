docker run --gpus all -it --rm nvcr.io/nvidia/pytorch:20.02-py3 bash
python -c "import torch; print(torch.cuda.is_available())"


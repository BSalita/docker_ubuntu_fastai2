# can't update base conda env because of perm problem
# conda update -n base -c defaults conda

# use shell.bash hook to enable activating of  env
eval "$(conda shell.bash hook)"
conda activate fastai2

pip install fastai2
pip install nbdev
nbdev_install_git_hooks
pip install jupytext
#conda install pyarrow
pip install pyarrow
pip install graphviz
pip install pydicom kornia opencv-python scikit-image
pip install azure
pip install azure-cognitiveservices-vision-computervision
pip install azure-cognitiveservices-search-websearch
pip install azure-cognitiveservices-search-imagesearch
pip install "ipywidgets>=7.5.1"
pip install sentencepiece
pip install scikit_learn
#pip install virtualenvwrapper

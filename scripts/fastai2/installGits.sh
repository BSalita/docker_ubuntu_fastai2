#install fastai githubs
rm -rf fastai2
git clone https://github.com/fastai/fastai2
cd fastai2
conda env update -n fastai2 -f environment.yml
rm -rf course-v4
git clone https://github.com/fastai/course-v4
rm -rf fastbook
git clone https://github.com/fastai/fastbook

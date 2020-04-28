ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

# Install Tensorflow
RUN pip install --quiet 'tensorflow==2.1.0' \
	&& pip install --quiet 'keras==2.3.1' \
	&& fix-permissions $CONDA_DIR \
	&& fix-permissions /home/$NB_USER
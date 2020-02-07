FROM anibali/pytorch:cuda-10.1

# TODO: pin versions
RUN pip install --no-cache-dir jupyterlab bokeh sympy sklearn torchviz

# ARG NB_USER=user 
# ARG NB_UID=1000
# ENV USER ${NB_USER}
# ENV NB_UID ${NB_UID}
# ENV HOME /home/${NB_USER}

# USER root
# RUN adduser --disabled-password\
#     --gecos "Default user" \
# --uid ${NB_UID} \
# ${NB_USER}

# Copy files to new home dir for nbuser and change permissions on dir
# COPY . ${HOME}
# USER root 
# RUN chown -R ${NB_UID} ${HOME}
# USER ${NB_USER}
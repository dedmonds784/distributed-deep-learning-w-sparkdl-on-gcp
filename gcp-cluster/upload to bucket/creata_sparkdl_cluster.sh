#!/bin/sh

#  creata_sparkdl_cluster.sh
#  
#
#  Created by Dylan Edmonds on 6/27/19.
#  

gsutil -m cp -r gs://initializations/dataproc-initialization-actions-master/conda/bootstrap-conda.sh .
gsutil -m cp -r gs://initializations/dataproc-initialization-actions-master/conda/install-conda-env.sh .

chmod 755 ./*conda*.sh

# Install Miniconda / conda
./bootstrap-conda.sh

# Update conda root environment with specific packages in pip and conda
CONDA_PACKAGES='tensorflow keras'
PIP_PACKAGES='sparkdl pandas pillow tensorframes kafka tensorflowonspark kafka jieba ipyparallel msgpack'

CONDA_PACKAGES=$CONDA_PACKAGES PIP_PACKAGES=$PIP_PACKAGES ./install-conda-env.sh

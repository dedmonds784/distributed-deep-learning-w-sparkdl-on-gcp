gcloud beta dataproc clusters create spark-deeplearning --image-version 1.4 --zone us-central1-a --master-machine-type n1-standard-4 --master-boot-disk-size 500 --worker-machine-type n1-standard-4 --num-workers 4 --worker-boot-disk-size 500 --optional-components=ANACONDA,JUPYTER --enable-component-gateway --initialization-actions gs://initializations/creata_sparkdl_cluster.sh



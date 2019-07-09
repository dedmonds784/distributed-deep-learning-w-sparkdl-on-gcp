# distributed-deep-learning-w-sparkdl-on-gcp
This project uses sparkdl and a gcp cluster inorder to train a model for image classification.

The first file named 'gcp-cluster' holds a shell script to create a 5 node Spark cluster (1 Master, 4 slaves). This command can be either run in your local terminal if gcloud is connected to your gcp account, or can be copy and pasted to the glcoud console in gcp itself.

*__Note: the expected costs associtated. by creating this cluster is expected to be 0.20 cents(US)/month given the use of the five n1-standard-4 machine types. if you would like to change the machine type used to be cheaper please refer to the [Cloud DataProc Pricing](https://cloud.google.com/dataproc/pricing) documentation to choose machines to match your budget.__*

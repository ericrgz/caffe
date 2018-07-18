# Caffe
The container is an exemple to use caffe framework in iExec 

This container executes the demo of lenet algorithm for character recognition.

More info:

[http://yann.lecun.com/exdb/lenet/](http://yann.lecun.com/exdb/lenet/)

[http://caffe.berkeleyvision.org/gathered/examples/mnist.html](http://caffe.berkeleyvision.org/gathered/examples/mnist.html)

## Start container
The number of GPU can be selected by environment variable as follow:
For 1 gpu:
LGPU='0'
For 3 gpus:
LGPU='0,1,2'

Start the test by hand, from the initial container provided by BVLC 
```
sudo docker run -it -e LGPU='0' --runtime=nvidia bvlc/caffe:gpu bash
```
Then launch the test with the following commands 
```
cd $CAFFE_ROOT
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
```

Launch the complete test:
```
sudo docker run --runtime=nvidia -e LGPU='0' ericro/caffe_gpu_lenet
```





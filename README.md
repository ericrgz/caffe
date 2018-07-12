# caffe
[demo link for lenet mnist](http://caffe.berkeleyvision.org/gathered/examples/mnist.html)

## Start container
```
sudo docker run -it --runtime=nvidia bvlc/caffe:gpu bash
```

## Run the test:
```
cd $CAFFE_ROOT
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
```
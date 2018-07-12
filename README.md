# caffe
[demo link](http://caffe.berkeleyvision.org/gathered/examples/mnist.html)

## Start container
```
sudo docker run -it --runtime=nvidia bvlc/caffe:gpu bash
```

## Run the test:
```
sudo docker run -it --runtime=nvidia bvlc/caffe:gpu bash
cd $CAFFE_ROOT
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh

./examples/mnist/train_lenet.sh
```
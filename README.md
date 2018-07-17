# caffe
[demo link for lenet mnist](http://caffe.berkeleyvision.org/gathered/examples/mnist.html)

## Start container
ex LGPU='0' LGPU='0,1'  
```
sudo docker run -it -e LGPU='0' --runtime=nvidia bvlc/caffe:gpu bash
```
```
sudo docker run --runtime=nvidia -e LGPU='0' ericro/caffe_gpu_lenet
```

## Run the test:
```
cd $CAFFE_ROOT
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
```



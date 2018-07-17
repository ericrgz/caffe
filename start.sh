#REF
#sudo /usr/bin/time -o REF.log docker run -e LGPU='0' --runtime=nvidia test
#sleep 5

##Test 3gpus_in_parallel 
sudo /usr/bin/time -o 3GPUS_0.log docker run -e LGPU='0' --runtime=nvidia test &
sudo /usr/bin/time -o 3GPUS_1.log docker run -e LGPU='1' --runtime=nvidia test &
sudo /usr/bin/time -o 3GPUS_2.log docker run -e LGPU='2' --runtime=nvidia test 

#sleep 5
#Test 2gpus_in_parallel 
#sudo /usr/bin/time -o 2GPUS_1.log docker run -e LGPU='1' --runtime=nvidia test &
#sudo /usr/bin/time -o 2GPUS_2.log docker run -e LGPU='2' --runtime=nvidia test 

#!/bin/bash
clear


###CUDA	9.2

echo "\033[1;31m     CUDA	9.2  "
sleep 2s

wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda_9.2.148_396.37_linux -O /tmp/cuda_9.2.run  
sh /tmp/cuda_9.2.run --verbose --silent --toolkit --override 
echo "export PATH=\"$PATH:/usr/local/cuda-9.2/bin\"" >> ~/.bashrc  
echo "/usr/local/cuda-9.2/lib64" >> /etc/ld.so.conf  
ldconfig
# Patch 1
wget https://developer.nvidia.com/compute/cuda/9.2/Prod/patches/1/cuda_9.2.88.1_linux -O /tmp/cuda_9.2-patch_1.run  
sh /tmp/cuda_9.2-patch_1.run --silent --accept-eula

# Download from following link: 
wget https://developer.download.nvidia.com/compute/redist/cudnn/v7.6.5/cudnn-9.2-linux-x64-v7.6.5.32.tgz &&   tar -xzvf cudnn-9.2-linux-x64-v7.6.5.32.tgz 
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-9.2/include  
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-9.2/lib64/  
sudo chmod a+r /usr/local/cuda-9.2/lib64/libcudnn*


###CUDA  10.0

echo "\033[1;31m     CUDA	10.0  "
sleep 2s


# Install build essentials
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev 

#Download CUDA 10.0
wget  --no-clobber https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb 
dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb  
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub  
apt-get update  
apt-get install cuda-10-0


# copy the following files into the cuda toolkit directory.
echo 'export PATH=/usr/local/cuda-10.0/bin:$PATH' >> ~/.bashrc 
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc


# Download from following link: 
wget https://developer.download.nvidia.com/compute/redist/cudnn/v7.6.5/cudnn-10.0-linux-x64-v7.6.5.32.tgz &&  tar -xzvf cudnn-10.0-linux-x64-v7.6.5.32.tgz  
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-10.0/include  &&
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.0/lib64/  &&
sudo chmod a+r /usr/local/cuda-10.0/lib64/libcudnn*


###CUDA  10.1

echo "\033[1;31m     CUDA	10.1  "
sleep 2s


# Install build essentials
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev 

#Download CUDA 10.1
wget  --no-clobber https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.243-1_amd64.deb 
dpkg -i cuda-repo-ubuntu1804_10.1.243-1_amd64.deb 
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub 
apt-get update 
apt-get install cuda-10-1


# copy the following files into the cuda toolkit directory.
echo 'export PATH=/usr/local/cuda-10.1/bin:$PATH' >> ~/.bashrc  
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc


# Download from following link: 
wget https://developer.download.nvidia.com/compute/redist/cudnn/v8.0.5/cudnn-10.1-linux-x64-v8.0.5.39.tgz && tar -xzvf cudnn-10.1-linux-x64-v8.0.5.39.tgz  
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-10.1/include  
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.1/lib64/  
sudo chmod a+r /usr/local/cuda-10.1/lib64/libcudnn*


###CUDA  10.2

echo "\033[1;31m     CUDA	10.2  "
sleep 2s


# Install build essentials
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev 

# Download CuDA from following path
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.2.89-1_amd64.deb  
dpkg -i cuda-repo-ubuntu1804_10.2.89-1_amd64.deb  
sudo apt-key adv - fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub  
apt-get update 
apt install cuda-10.2  


# copy the following files into the cuda toolkit directory.
echo 'export PATH=/usr/local/cuda-10.2/bin:$PATH' >> ~/.bashrc 
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc 


# Download from following link: 
wget https://developer.download.nvidia.com/compute/redist/cudnn/v8.3.0/cudnn-10.2-linux-x64-v8.3.0.98.tgz && tar -xzvf cudnn-10.2-linux-x64-v8.3.0.98.tgz  
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-10.2/include  
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.2/lib64/  
sudo chmod a+r /usr/local/cuda-10.2/lib64/libcudnn*


###CUDA  11.0

echo "\033[1;31m     CUDA	11.0  "
sleep 2s


# Install build essentials
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev 

# Download CuDA from following path
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-11-0_11.0.3-1_amd64.deb
dpkg -i cuda-11-0_11.0.3-1_amd64.deb
sudo apt-key adv - fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub  
apt-get update 
apt install cuda-11.0


# copy the following files into the cuda toolkit directory.
echo 'export PATH=/usr/local/cuda-11.0/bin:$PATH' >> ~/.bashrc 
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc 


# Download from following link: 
wget https://developer.download.nvidia.com/compute/redist/cudnn/v8.0.5/cudnn-11.0-linux-x64-v8.0.5.39.tgz &&  tar -xzvf cudnn-11.0-linux-x64-v8.0.5.39.tgz
sudo cp -P cuda/include/cudnn.h /usr/local/cuda-11.0/include  
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-11.0/lib64/  
sudo chmod a+r /usr/local/cuda-11.0/lib64/libcudnn*









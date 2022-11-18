
#Uninstall the current CUDA version
apt-get --purge remove cuda nvidia* libnvidia-* 
dpkg -l | grep cuda- | awk '{print $2}' | xargs -n1 dpkg --purge 
apt-get remove cuda-* 
apt autoremove 
apt-get update


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



#Uninstall the current CUDA version
apt-get --purge remove cuda nvidia* libnvidia-* 
dpkg -l | grep cuda- | awk '{print $2}' | xargs -n1 dpkg --purge 
apt-get remove cuda-* 
apt autoremove 
apt-get update


# Install build essentials
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev 

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


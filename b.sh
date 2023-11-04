#rm -rf /home/alex/firmware/output/build/hi3881
cp -ar /home/alex/firmware/general/package/hi3881 /home/alex/firmware/output/build
cd /home/alex/firmware/output/build/hi3881
make -j4

#cd /home/alex/firmware/output/build/linux-custom
#make -j4

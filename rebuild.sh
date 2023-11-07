#make BOARD=hi3516ev300_ultimate all
#BOARD=hi3516ev300_ultimate  make br-linux-{dirclean,rebuild}
#BOARD=hi3516ev300_ultimate  make br-rootfs-{squashfs,tar}
#BOARD=hi3516ev300_ultimate  make br-vtund-openipc-{dirclean,rebuild}

#BOARD=hi3516ev300_ultimate  make br-autonight-rebuild

#BOARD=hi3516ev300_ultimate  make br-linux-dirclean
cp -ar /home/alex/firmware/general/package/hi3881 /home/alex/firmware/output/build
BOARD=hi3516ev300_ultimate  make br-linux-rebuild

# BOARD=hi3516ev300_ultimate  make br-hi3881-dirclean
# BOARD=hi3516ev300_ultimate  make br-hi3881-rebuild

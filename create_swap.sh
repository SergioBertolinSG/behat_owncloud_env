sh -c "/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024"
sh -c "/sbin/mkswap /var/swap.1"
sh -c "/sbin/swapon /var/swap.1"

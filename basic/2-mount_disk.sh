#############################################################
#                                                           #
#!!!!! THIS SCIRPT NOT RECOMMAND TO USE!!!!!! #
#                                                           #
#############################################################

## Use cfdisk to depart disks, and mount them at right points.
## Default Disks: /


read -p "THIS SCRIPT IS NOT RECOMMANDED TO USE. Do you want excute it? [yes/no]" choice
if [ "$choice" != "yes" ]; then
	exit
fi

echo "Start parted disks."
echo "Now select disk. Example: /dev/nvme0n1 or /dev/sda"
read -p "Disk: " Disk
cfdisk $Disk

echo "Start mount disks."
read -p "Point / disk: " Root

# mkfs
mkfs.ext4 $Root

# mount
mount $Root /mnt

# prompt
echo "If your computer is UEFI + GPT, please run: mkdir -pv /mnt/boot/efi && mount /dev/sd?x(ESP) /mnt/boot/efi."

echo "bash 3-pacstrap_arch.sh"

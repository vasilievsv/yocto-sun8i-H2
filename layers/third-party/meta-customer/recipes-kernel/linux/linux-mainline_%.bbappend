FILESEXTRAPATHS_prepend := "${THISDIR}/linux-mainline:"
 
# Prevent the use of in-tree defconfig
unset KBUILD_DEFCONFIG
 
SRC_URI += "\
	file://enable_uart1_rs485_sun8i_pizero.patch \
	file://enable_uart2_rs485_sun8i_pizero.patch \
	file://rs485-8250_dw-8250_of.patch \
	"
do_configure_append() {

}

# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := simple_v0


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += Library/MQTT/Extend/EthernetInterface.o
OBJECTS += Library/MQTT/Extend/MQTTEthernetTLS.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTConnectClient.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTConnectServer.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTDeserializePublish.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTPacket.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTSerializePublish.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTSubscribeClient.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTSubscribeServer.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTUnsubscribeClient.o
OBJECTS += Library/MQTT/MQTTPacket/MQTTUnsubscribeServer.o
OBJECTS += Library/SimpleAPI/middleware/MA/MA.o
OBJECTS += Library/SimpleAPI/middleware/SMA/SMA.o
OBJECTS += Library/SimpleAPI/middleware/SRA/SRA.o
OBJECTS += Library/SimpleAPI/middleware/ThingPlug_Simple_SDK.o
OBJECTS += Library/SimpleAPI/src/SKTtpDebug.o
OBJECTS += Library/SimpleAPI/src/ThingPlug.o
OBJECTS += Library/SimpleAPI/src/net/MQTT_handler.o
OBJECTS += Library/SimpleAPI/src/simple/Simple.o
OBJECTS += Library/SimpleAPI/src/simple/cJSON.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/DHCPClient/DHCPClient.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/DNSClient/DNSClient.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/Socket/Endpoint.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/Socket/Socket.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/Socket/TCPSocketConnection.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/Socket/TCPSocketServer.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/Socket/UDPSocket.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/WIZnet/W5100.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/WIZnet/W5200.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/WIZnet/W5500.o
OBJECTS += Library/WIZnet_Library/WIZnetInterface/WIZnetInterface.o
OBJECTS += Library/mbedtls_2_3_0/library/aes.o
OBJECTS += Library/mbedtls_2_3_0/library/aesni.o
OBJECTS += Library/mbedtls_2_3_0/library/arc4.o
OBJECTS += Library/mbedtls_2_3_0/library/asn1parse.o
OBJECTS += Library/mbedtls_2_3_0/library/asn1write.o
OBJECTS += Library/mbedtls_2_3_0/library/base64.o
OBJECTS += Library/mbedtls_2_3_0/library/bignum.o
OBJECTS += Library/mbedtls_2_3_0/library/blowfish.o
OBJECTS += Library/mbedtls_2_3_0/library/camellia.o
OBJECTS += Library/mbedtls_2_3_0/library/ccm.o
OBJECTS += Library/mbedtls_2_3_0/library/certs.o
OBJECTS += Library/mbedtls_2_3_0/library/cipher.o
OBJECTS += Library/mbedtls_2_3_0/library/cipher_wrap.o
OBJECTS += Library/mbedtls_2_3_0/library/ctr_drbg.o
OBJECTS += Library/mbedtls_2_3_0/library/debug.o
OBJECTS += Library/mbedtls_2_3_0/library/des.o
OBJECTS += Library/mbedtls_2_3_0/library/dhm.o
OBJECTS += Library/mbedtls_2_3_0/library/ecdh.o
OBJECTS += Library/mbedtls_2_3_0/library/ecdsa.o
OBJECTS += Library/mbedtls_2_3_0/library/ecjpake.o
OBJECTS += Library/mbedtls_2_3_0/library/ecp.o
OBJECTS += Library/mbedtls_2_3_0/library/ecp_curves.o
OBJECTS += Library/mbedtls_2_3_0/library/entropy.o
OBJECTS += Library/mbedtls_2_3_0/library/entropy_poll.o
OBJECTS += Library/mbedtls_2_3_0/library/error.o
OBJECTS += Library/mbedtls_2_3_0/library/gcm.o
OBJECTS += Library/mbedtls_2_3_0/library/havege.o
OBJECTS += Library/mbedtls_2_3_0/library/hmac_drbg.o
OBJECTS += Library/mbedtls_2_3_0/library/md.o
OBJECTS += Library/mbedtls_2_3_0/library/md2.o
OBJECTS += Library/mbedtls_2_3_0/library/md4.o
OBJECTS += Library/mbedtls_2_3_0/library/md5.o
OBJECTS += Library/mbedtls_2_3_0/library/md_wrap.o
OBJECTS += Library/mbedtls_2_3_0/library/memory_buffer_alloc.o
OBJECTS += Library/mbedtls_2_3_0/library/net.o
OBJECTS += Library/mbedtls_2_3_0/library/oid.o
OBJECTS += Library/mbedtls_2_3_0/library/padlock.o
OBJECTS += Library/mbedtls_2_3_0/library/pem.o
OBJECTS += Library/mbedtls_2_3_0/library/pk.o
OBJECTS += Library/mbedtls_2_3_0/library/pk_wrap.o
OBJECTS += Library/mbedtls_2_3_0/library/pkcs11.o
OBJECTS += Library/mbedtls_2_3_0/library/pkcs12.o
OBJECTS += Library/mbedtls_2_3_0/library/pkcs5.o
OBJECTS += Library/mbedtls_2_3_0/library/pkparse.o
OBJECTS += Library/mbedtls_2_3_0/library/pkwrite.o
OBJECTS += Library/mbedtls_2_3_0/library/platform.o
OBJECTS += Library/mbedtls_2_3_0/library/ripemd160.o
OBJECTS += Library/mbedtls_2_3_0/library/rsa.o
OBJECTS += Library/mbedtls_2_3_0/library/sha1.o
OBJECTS += Library/mbedtls_2_3_0/library/sha256.o
OBJECTS += Library/mbedtls_2_3_0/library/sha512.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_cache.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_ciphersuites.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_cli.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_cookie.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_srv.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_ticket.o
OBJECTS += Library/mbedtls_2_3_0/library/ssl_tls.o
OBJECTS += Library/mbedtls_2_3_0/library/threading.o
OBJECTS += Library/mbedtls_2_3_0/library/timing.o
OBJECTS += Library/mbedtls_2_3_0/library/version.o
OBJECTS += Library/mbedtls_2_3_0/library/version_features.o
OBJECTS += Library/mbedtls_2_3_0/library/x509.o
OBJECTS += Library/mbedtls_2_3_0/library/x509_create.o
OBJECTS += Library/mbedtls_2_3_0/library/x509_crl.o
OBJECTS += Library/mbedtls_2_3_0/library/x509_crt.o
OBJECTS += Library/mbedtls_2_3_0/library/x509_csr.o
OBJECTS += Library/mbedtls_2_3_0/library/x509write_crt.o
OBJECTS += Library/mbedtls_2_3_0/library/x509write_csr.o
OBJECTS += Library/mbedtls_2_3_0/library/xtea.o
OBJECTS += NTPClient/NTPClient.o
OBJECTS += main.o

 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fsmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/hal_tick.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/startup_stm32f411xe.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_wwdg.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_eth.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ramfunc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_irda.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_msp_template.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_sdmmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dfsdm.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/mbed_board.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_crc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sram.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_lptim.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/cmsis_nvic.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cortex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pccard.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_usb.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_smartcard.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sdram.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_gpio.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/mbed_overrides.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dsi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cec.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_can.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/system_stm32f4xx.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_uart.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_usart.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spdifrx.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma2d.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nor.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rng.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/retarget.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_iwdg.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nand.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_qspi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hcd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ramfunc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/cmsis_nvic.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/hal_tick.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/mbed_board.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/mbed_overrides.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/retarget.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/startup_stm32f411xe.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_adc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_can.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cec.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cortex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_crc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_cryp_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dac_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dcmi_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dfsdm.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma2d.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dma_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_dsi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_eth.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_flash_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_fmpi2c.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_msp_template.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_gpio.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hash_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_hcd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2c_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_i2s_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_irda.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_iwdg.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_lptim.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_ltdc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_smartcard.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nand.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_nor.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pccard.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pcd_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_pwr_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_qspi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rcc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rng.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_rtc_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sai_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sd.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sdram.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spdifrx.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_spi.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_sram.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_tim_ex.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_uart.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_usart.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_hal_wwdg.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_fsmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_sdmmc.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/stm32f4xx_ll_usb.o
 SYS_OBJECTS += mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/system_stm32f4xx.o

INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I../Library
INCLUDE_PATHS += -I../Library/MQTT
INCLUDE_PATHS += -I../Library/MQTT/Extend
INCLUDE_PATHS += -I../Library/MQTT/FP
INCLUDE_PATHS += -I../Library/MQTT/MQTTPacket
INCLUDE_PATHS += -I../Library/SimpleAPI
INCLUDE_PATHS += -I../Library/SimpleAPI/include
INCLUDE_PATHS += -I../Library/SimpleAPI/middleware
INCLUDE_PATHS += -I../Library/SimpleAPI/middleware/MA
INCLUDE_PATHS += -I../Library/SimpleAPI/middleware/SMA
INCLUDE_PATHS += -I../Library/SimpleAPI/middleware/SRA
INCLUDE_PATHS += -I../Library/SimpleAPI/src
INCLUDE_PATHS += -I../Library/SimpleAPI/src/net
INCLUDE_PATHS += -I../Library/SimpleAPI/src/simple
INCLUDE_PATHS += -I../Library/WIZnet_Library
INCLUDE_PATHS += -I../Library/WIZnet_Library/WIZnetInterface
INCLUDE_PATHS += -I../Library/WIZnet_Library/WIZnetInterface/DHCPClient
INCLUDE_PATHS += -I../Library/WIZnet_Library/WIZnetInterface/DNSClient
INCLUDE_PATHS += -I../Library/WIZnet_Library/WIZnetInterface/Socket
INCLUDE_PATHS += -I../Library/WIZnet_Library/WIZnetInterface/WIZnet
INCLUDE_PATHS += -I../Library/mbedtls_2_3_0
INCLUDE_PATHS += -I../Library/mbedtls_2_3_0/include
INCLUDE_PATHS += -I../Library/mbedtls_2_3_0/include/mbedtls
INCLUDE_PATHS += -I../Library/mbedtls_2_3_0/library
INCLUDE_PATHS += -I../NTPClient
INCLUDE_PATHS += -I../mbed
INCLUDE_PATHS += -I../mbed/.
INCLUDE_PATHS += -I../mbed/TARGET_NUCLEO_F411RE
INCLUDE_PATHS += -I../mbed/TARGET_NUCLEO_F411RE/TARGET_STM
INCLUDE_PATHS += -I../mbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4
INCLUDE_PATHS += -I../mbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE
INCLUDE_PATHS += -I../mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM

LIBRARY_PATHS := -L../mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM 
LIBRARIES := -lmbed  -lmbed 
LINKER_SCRIPT ?= ../mbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM/STM32F411XE.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_memalign_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-Wl,-n' '-mcpu=cortex-m4' '-mthumb' '-mfpu=fpv4-sp-d16' '-mfloat-abi=softfp'


C_FLAGS += -std=gnu99
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1510734799.14
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DTARGET_RTOS_M4_M7
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -DDEVICE_SERIAL_ASYNCH=1
C_FLAGS += -DTARGET_STM32F4
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -D__CORTEX_M4
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DTARGET_LIKE_CORTEX_M4
C_FLAGS += -DTARGET_M4
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_CORTEX
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -DTARGET_NUCLEO_F411RE
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_FF_MORPHO
C_FLAGS += -D__FPU_PRESENT=1
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DTARGET_STM
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ERROR_RED=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DTARGET_STM32F411RE
C_FLAGS += -DARM_MATH_CM4
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1510734799.14
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DTARGET_RTOS_M4_M7
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -DDEVICE_SERIAL_ASYNCH=1
CXX_FLAGS += -DTARGET_STM32F4
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -D__CORTEX_M4
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M4
CXX_FLAGS += -DTARGET_M4
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_CORTEX
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -DTARGET_NUCLEO_F411RE
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_FF_MORPHO
CXX_FLAGS += -D__FPU_PRESENT=1
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DTARGET_STM
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ERROR_RED=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DTARGET_STM32F411RE
CXX_FLAGS += -DARM_MATH_CM4
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__FPU_PRESENT=1
ASM_FLAGS += -DARM_MATH_CM4
ASM_FLAGS += -D__CORTEX_M4
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -I.
ASM_FLAGS += -INTPClient
ASM_FLAGS += -Imbed
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM
ASM_FLAGS += -ILibrary
ASM_FLAGS += -ILibrary/MQTT
ASM_FLAGS += -ILibrary/MQTT/Extend
ASM_FLAGS += -ILibrary/MQTT/MQTTPacket
ASM_FLAGS += -ILibrary/MQTT/FP
ASM_FLAGS += -ILibrary/mbedtls_2_3_0
ASM_FLAGS += -ILibrary/mbedtls_2_3_0/library
ASM_FLAGS += -ILibrary/mbedtls_2_3_0/include
ASM_FLAGS += -ILibrary/mbedtls_2_3_0/include/mbedtls
ASM_FLAGS += -ILibrary/WIZnet_Library
ASM_FLAGS += -ILibrary/WIZnet_Library/WIZnetInterface
ASM_FLAGS += -ILibrary/WIZnet_Library/WIZnetInterface/DNSClient
ASM_FLAGS += -ILibrary/WIZnet_Library/WIZnetInterface/WIZnet
ASM_FLAGS += -ILibrary/WIZnet_Library/WIZnetInterface/Socket
ASM_FLAGS += -ILibrary/WIZnet_Library/WIZnetInterface/DHCPClient
ASM_FLAGS += -ILibrary/SimpleAPI
ASM_FLAGS += -ILibrary/SimpleAPI/include
ASM_FLAGS += -ILibrary/SimpleAPI/src
ASM_FLAGS += -ILibrary/SimpleAPI/src/simple
ASM_FLAGS += -ILibrary/SimpleAPI/src/net
ASM_FLAGS += -ILibrary/SimpleAPI/middleware
ASM_FLAGS += -ILibrary/SimpleAPI/middleware/SRA
ASM_FLAGS += -ILibrary/SimpleAPI/middleware/SMA
ASM_FLAGS += -ILibrary/SimpleAPI/middleware/MA
ASM_FLAGS += -Imbed/.
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F411RE
ASM_FLAGS += -Imbed/TARGET_NUCLEO_F411RE/TOOLCHAIN_GCC_ARM


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_memalign_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -Wl,-n -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp 
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -lmbed -lmbed -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  


.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
  
	@$(AS) -c $(ASM_FLAGS) -o $@ $<
  

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld 
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
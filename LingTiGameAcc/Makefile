#
# Copyright (C) 2021 KFERMercer <KFER.Mercer@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
#

#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=LingTiGameAcc
PKG_VERSION:=1.7.7
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/LingTiGameAcc
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=@(aarch64||arm||mipsel||mips||x86_64) +kmod-tun
  TITLE:=LingTi GameAcc
  URL:=https://lingti.com
endef

define Package/LingTiGameAcc/description
  LingTi GameAcc Triple-A Gameplay and Market
endef

ifeq ($(ARCH),arm)
	LingTi_ARCH:=arm
	PKG_MD5SUM:=skip
endif

ifeq ($(ARCH),aarch64)
	LingTi_ARCH:=aarch64
	PKG_MD5SUM:=skip
endif

ifeq ($(ARCH),mips)
	LingTi_ARCH:=mips
	PKG_MD5SUM:=skip
endif

ifeq ($(ARCH),mipsel)
	LingTi_ARCH:=mipsel
	PKG_MD5SUM:=skip
endif

ifeq ($(ARCH),x86_64)
	LingTi_ARCH:=x86_64
	PKG_MD5SUM:=skip
endif

PKG_SOURCE_URL:=http://lingti-1302055788.file.myqcloud.com/router/$(PKG_VERSION)/lingti-router-$(LingTi_ARCH).tar.gz?
PKG_SOURCE:=$(PKG_NAME)-$(LingTi_ARCH)-$(PKG_VERSION).tar.gz

STRIP:=true

UNTAR_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)/$(PKG_NAME)-$(LingTi_ARCH)-bin

define Build/Prepare
	mkdir -vp $(UNTAR_DIR)
	tar -zxvf $(DL_DIR)/$(PKG_SOURCE) -C $(UNTAR_DIR)
endef

define Build/Compile
endef

define Package/LingTiGameAcc/install
	$(INSTALL_DIR) $(1)/usr/share/LingTiGameAcc
	$(INSTALL_BIN) $(UNTAR_DIR)/lingti $(1)/usr/share/LingTiGameAcc/lingti

endef

$(eval $(call BuildPackage,LingTiGameAcc))

/* linux/arch/arm/mach-exynos/include/mach/gpio-midas.h
 *
 * Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
 *		http://www.samsung.com
 *
 * EXYNOS4 - MIDAS GPIO lib
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
*/

#ifndef __ASM_ARCH_GPIO_MIDAS_H
#define __ASM_ARCH_GPIO_MIDAS_H __FILE__

#if defined(CONFIG_MACH_MIDAS_01_BD) || defined(CONFIG_GPIO_MIDAS_01_BD)
#include "gpio-rev01-midas.h"
#elif defined(CONFIG_MACH_MIDAS_02_BD) || defined(CONFIG_GPIO_MIDAS_02_BD)
#include "gpio-rev02-midas.h"
#elif defined(CONFIG_MACH_M0_GRANDECTC)
#include "gpio-rev00-m0grandectc.h"
#elif defined(CONFIG_MACH_M0_CTC)
#include "gpio-rev00-m0ctc.h"
#elif defined(CONFIG_MACH_M0) || defined(CONFIG_MACH_SLP_PQ)
#include "gpio-rev00-m0.h"
#elif defined(CONFIG_MACH_M3)
#include "gpio-rev00-m3.h"
#elif defined(CONFIG_MACH_C1) && !defined(CONFIG_TARGET_LOCALE_KOR)
#include "gpio-rev00-c1.h"
#elif (defined(CONFIG_MACH_C1VZW) || defined(CONFIG_MACH_SLP_PQ_LTE)) && \
	!defined(CONFIG_TARGET_LOCALE_KOR)
#include "gpio-rev00-c1vzw.h"
#elif defined(CONFIG_MACH_JENGA)
#include "gpio-rev00-jenga.h"
#elif defined(CONFIG_MACH_S2PLUS)
#include "gpio-rev00-s2plus.h"
#elif defined(CONFIG_GPIO_NAPLES_00_BD)
#include "gpio-rev00-naples.h"
#elif (defined(CONFIG_MACH_C1) || defined(CONFIG_MACH_C1VZW)) && \
	defined(CONFIG_TARGET_LOCALE_KOR)
#include "gpio-rev03-c1kor.h"
#elif defined(CONFIG_MACH_P4NOTE)
#include "gpio-rev00-p4notepq.h"
#elif defined(CONFIG_MACH_GC1)
#include "gpio-rev00-gc1.h"
#elif defined(CONFIG_MACH_T0)
#include "gpio-rev00-t0.h"
#endif

#endif /* __ASM_ARCH_GPIO_MIDAS_H */

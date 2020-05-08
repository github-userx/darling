/*
 * Copyright (c) 1999-2007 Apple Inc. All rights reserved.
 *
 * @APPLE_OSREFERENCE_LICENSE_HEADER_START@
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. The rights granted to you under the License
 * may not be used to create, or enable the creation or redistribution of,
 * unlawful or unlicensed copies of an Apple operating system, or to
 * circumvent, violate, or enable the circumvention or violation of, any
 * terms of an Apple operating system software license agreement.
 * 
 * Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_OSREFERENCE_LICENSE_HEADER_END@
 */

#include "SYS.h"

#if defined(__x86_64__)

__SYSCALL(___lseek, lseek, 3)

#elif defined(__i386__)

__SYSCALL_INT(___lseek, lseek, 3)

#elif defined(__arm__)

__SYSCALL(___lseek, lseek, 4)

#elif defined(__arm64__)

__SYSCALL(___lseek, lseek, 3)

#else
#error Unsupported architecture
#endif
#if defined(__i386__)
	.globl	_lseek
	.set	_lseek, ___lseek
#endif

#if defined(__x86_64__)
	.globl	_lseek
	.set	_lseek, ___lseek
#endif

#if defined(__ppc__)
	.globl	_lseek
	.set	_lseek, ___lseek
#endif

#if defined(__arm__)
	.globl	_lseek
	.set	_lseek, ___lseek
#endif

#if defined(__arm64__)
	.globl	_lseek
	.set	_lseek, ___lseek
#endif

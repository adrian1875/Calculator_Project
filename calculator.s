	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"calculator.c"
	.def	 sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf                 # -- Begin function sprintf
	.p2align	4, 0x90
sprintf:                                # @sprintf
.seh_proc sprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vsprintf_l
	movl	%eax, 52(%rsp)
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,sprintf
	.seh_endproc
                                        # -- End function
	.def	 vsprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,vsprintf
	.globl	vsprintf                # -- Begin function vsprintf
	.p2align	4, 0x90
vsprintf:                               # @vsprintf
.seh_proc vsprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	48(%rsp), %rdx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,vsprintf
	.seh_endproc
                                        # -- End function
	.def	 _snprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_snprintf
	.globl	_snprintf               # -- Begin function _snprintf
	.p2align	4, 0x90
_snprintf:                              # @_snprintf
.seh_proc _snprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %r9
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_vsnprintf
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_snprintf
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf
	.globl	_vsnprintf              # -- Begin function _vsnprintf
	.p2align	4, 0x90
_vsnprintf:                             # @_vsnprintf
.seh_proc _vsnprintf
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	xorl	%eax, %eax
	movl	%eax, %r10d
	movq	%r9, 80(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	80(%rsp), %rcx
	movq	72(%rsp), %r8
	movq	64(%rsp), %rdx
	movq	56(%rsp), %r9
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r9
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	%r10, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_vsnprintf
	.seh_endproc
                                        # -- End function
	.def	 calc;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	calc                    # -- Begin function calc
	.p2align	4, 0x90
calc:                                   # @calc
.seh_proc calc
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movb	%r8b, 27(%rsp)
	movss	%xmm1, 20(%rsp)
	movss	%xmm0, 16(%rsp)
	movsbl	27(%rsp), %eax
	addl	$-42, %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	ja	.LBB4_5
# %bb.7:
	leaq	.LJTI4_0(%rip), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB4_1:
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	20(%rsp), %xmm0
	movss	%xmm0, 28(%rsp)
	jmp	.LBB4_6
.LBB4_2:
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	20(%rsp), %xmm0
	movss	%xmm0, 28(%rsp)
	jmp	.LBB4_6
.LBB4_3:
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	20(%rsp), %xmm0
	movss	%xmm0, 28(%rsp)
	jmp	.LBB4_6
.LBB4_4:
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	20(%rsp), %xmm0
	movss	%xmm0, 28(%rsp)
	jmp	.LBB4_6
.LBB4_5:
	xorps	%xmm0, %xmm0
	movss	%xmm0, 28(%rsp)
.LBB4_6:
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	retq
	.p2align	2, 0x90
.LJTI4_0:
	.long	.LBB4_3-.LJTI4_0
	.long	.LBB4_1-.LJTI4_0
	.long	.LBB4_5-.LJTI4_0
	.long	.LBB4_2-.LJTI4_0
	.long	.LBB4_5-.LJTI4_0
	.long	.LBB4_4-.LJTI4_0
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	$0, 68(%rsp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)
	movss	%xmm0, 60(%rsp)
	movss	%xmm0, 52(%rsp)
	leaq	"??_C@_02NJPGOMH@?$CFf?$AA@"(%rip), %rcx
	leaq	64(%rsp), %rdx
	callq	scanf
	leaq	"??_C@_02HAOIJKIC@?$CFc?$AA@"(%rip), %rcx
	leaq	59(%rsp), %rdx
	movl	%eax, 48(%rsp)          # 4-byte Spill
	callq	scanf
	leaq	"??_C@_02NJPGOMH@?$CFf?$AA@"(%rip), %rcx
	leaq	60(%rsp), %rdx
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	scanf
	movb	59(%rsp), %r8b
	movss	60(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, 40(%rsp)          # 4-byte Spill
	callq	calc
	movss	%xmm0, 52(%rsp)
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	"??_C@_0BI@EFIPIONM@?j?$LC?$LA?j?$LD?$LM?k?$IK?$JE?5?$CFf?5?l?$JO?$IF?k?$IL?$II?k?$IL?$KE?4?$AA@"(%rip), %rcx
	movaps	%xmm0, %xmm1
	movq	%xmm0, %rdx
	callq	printf
	xorl	%r9d, %r9d
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 scanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,scanf
	.globl	scanf                   # -- Begin function scanf
	.p2align	4, 0x90
scanf:                                  # @scanf
.seh_proc scanf
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rcx, 80(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %r9
	movq	80(%rsp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	__acrt_iob_func
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	_vfscanf_l
	movl	%eax, 76(%rsp)
	movl	76(%rsp), %eax
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,scanf
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                  # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 64(%rsp)
	leaq	88(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %r9
	movq	64(%rsp), %rdx
	movl	$1, %ecx
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	__acrt_iob_func
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	_vfprintf_l
	movl	%eax, 60(%rsp)
	movl	60(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,printf
	.seh_endproc
                                        # -- End function
	.def	 _vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l             # -- Begin function _vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:                            # @_vsprintf_l
.seh_proc _vsprintf_l
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, 80(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	80(%rsp), %rcx
	movq	72(%rsp), %r9
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$88, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_vsprintf_l
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l            # -- Begin function _vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:                           # @_vsnprintf_l
.seh_proc _vsnprintf_l
# %bb.0:
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	192(%rsp), %rax
	movq	%r9, 144(%rsp)
	movq	%r8, 136(%rsp)
	movq	%rdx, 128(%rsp)
	movq	%rcx, 120(%rsp)
	movq	192(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	136(%rsp), %r9
	movq	128(%rsp), %r8
	movq	120(%rsp), %r10
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%r10, 64(%rsp)          # 8-byte Spill
	callq	__local_stdio_printf_options
	movq	(%rax), %rax
	orq	$1, %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	80(%rsp), %r9           # 8-byte Reload
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%rsp)
	callq	__stdio_common_vsprintf
	movl	%eax, 116(%rsp)
	cmpl	$0, 116(%rsp)
	jge	.LBB9_2
# %bb.1:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, 60(%rsp)          # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:
	movl	116(%rsp), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
.LBB9_3:
	movl	60(%rsp), %eax          # 4-byte Reload
	addq	$152, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_vsnprintf_l
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.def	 _vfscanf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfscanf_l
	.globl	_vfscanf_l              # -- Begin function _vfscanf_l
	.p2align	4, 0x90
_vfscanf_l:                             # @_vfscanf_l
.seh_proc _vfscanf_l
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	96(%rsp), %rcx
	movq	88(%rsp), %r9
	movq	80(%rsp), %r8
	movq	72(%rsp), %rdx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	callq	__local_stdio_scanf_options
	movq	(%rax), %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfscanf
	nop
	addq	$104, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_vfscanf_l
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_scanf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_scanf_options
	.globl	__local_stdio_scanf_options # -- Begin function __local_stdio_scanf_options
	.p2align	4, 0x90
__local_stdio_scanf_options:            # @__local_stdio_scanf_options
# %bb.0:
	leaq	__local_stdio_scanf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.def	 _vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l             # -- Begin function _vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:                            # @_vfprintf_l
.seh_proc _vfprintf_l
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	96(%rsp), %rcx
	movq	88(%rsp), %r9
	movq	80(%rsp), %r8
	movq	72(%rsp), %rdx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfprintf
	nop
	addq	$104, %rsp
	retq
	.seh_handlerdata
	.section	.text,"xr",discard,_vfprintf_l
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_02NJPGOMH@?$CFf?$AA@"
	.globl	"??_C@_02NJPGOMH@?$CFf?$AA@" # @"??_C@_02NJPGOMH@?$CFf?$AA@"
"??_C@_02NJPGOMH@?$CFf?$AA@":
	.asciz	"%f"

	.section	.rdata,"dr",discard,"??_C@_02HAOIJKIC@?$CFc?$AA@"
	.globl	"??_C@_02HAOIJKIC@?$CFc?$AA@" # @"??_C@_02HAOIJKIC@?$CFc?$AA@"
"??_C@_02HAOIJKIC@?$CFc?$AA@":
	.asciz	"%c"

	.section	.rdata,"dr",discard,"??_C@_0BI@EFIPIONM@?j?$LC?$LA?j?$LD?$LM?k?$IK?$JE?5?$CFf?5?l?$JO?$IF?k?$IL?$II?k?$IL?$KE?4?$AA@"
	.globl	"??_C@_0BI@EFIPIONM@?j?$LC?$LA?j?$LD?$LM?k?$IK?$JE?5?$CFf?5?l?$JO?$IF?k?$IL?$II?k?$IL?$KE?4?$AA@" # @"??_C@_0BI@EFIPIONM@?j?$LC?$LA?j?$LD?$LM?k?$IK?$JE?5?$CFf?5?l?$JO?$IF?k?$IL?$II?k?$IL?$KE?4?$AA@"
"??_C@_0BI@EFIPIONM@?j?$LC?$LA?j?$LD?$LM?k?$IK?$JE?5?$CFf?5?l?$JO?$IF?k?$IL?$II?k?$IL?$KE?4?$AA@":
	.asciz	"\352\262\260\352\263\274\353\212\224 %f \354\236\205\353\213\210\353\213\244."

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.lcomm	__local_stdio_scanf_options._OptionsStorage,8,8 # @__local_stdio_scanf_options._OptionsStorage

	.addrsig
	.addrsig_sym _vsnprintf
	.addrsig_sym calc
	.addrsig_sym scanf
	.addrsig_sym printf
	.addrsig_sym _vsprintf_l
	.addrsig_sym _vsnprintf_l
	.addrsig_sym __stdio_common_vsprintf
	.addrsig_sym __local_stdio_printf_options
	.addrsig_sym _vfscanf_l
	.addrsig_sym __acrt_iob_func
	.addrsig_sym __stdio_common_vfscanf
	.addrsig_sym __local_stdio_scanf_options
	.addrsig_sym _vfprintf_l
	.addrsig_sym __stdio_common_vfprintf
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
	.addrsig_sym __local_stdio_scanf_options._OptionsStorage
	.globl	_fltused

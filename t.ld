ENTRY(start)  /* define start as entry address */
SECTIONS      /* program sections */
{
	. =0x10000;     /* loading address, required by QEMU */
	.text : { *(.text) } /* all text in .text section */
	.data : { *(.data) } /* all data in .data section */
        .bss  : { *(.bss)  } /* all bss in .bss section */
	. =ALIGN(8);
	. =. +0x1000;
	stack_top =.; /* stack_top is symbol exported by linker */

}

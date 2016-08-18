ENTRY(nomain)

SECTIONS
{
    . = SEGMENT_START("text-segment", 0x400000) + SIZEOF_HEADERS;
    tinytext : { *(.text) *(.data) *(.rodata) }
    /DISCARD/ : { *(.eh_frame) *(.comment) }
}

# Compute Xtensa-specific values

CT_DoArchTupleValues()
{
    # The architecture part of the tuple:
    CT_TARGET_ARCH="${CT_ARCH}${CT_ARCH_SUFFIX}"
    CT_ARCH_ENDIAN_CFLAG=""
    CT_ARCH_ENDIAN_LDFLAG=""

    # The system part of the tuple:
    case "${CT_LIBC}" in
        uClibc-ng)CT_TARGET_SYS=uclibc${CT_ARCH_BINFMT_FDPIC:+fdpic};;
    esac
}

CT_DoArchUClibcConfig()
{
    local cfg="${1}"

    CT_DoArchUClibcSelectArch "${cfg}" "xtensa"
}

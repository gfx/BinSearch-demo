#define NEED_newSVpvn_flags
#include "xshelper.h"


MODULE = LinearSearch    PACKAGE = LinearSearch

PROTOTYPES: DISABLE

IV
find(SV* value, AV* values)
CODE:
{
    IV const iv = SvIV(value);
    I32 const len = av_len(values) + 1;
    I32 i;
    RETVAL = -1;
    for(i = 0; i < len; i++) {
        SV* const sv = AvARRAY(values)[i];
        if(iv == SvIV(sv) ) {
            RETVAL = i;
            break;
        }
    }
}
OUTPUT:
    RETVAL


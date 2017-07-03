#include "xf_sdk.h"
#include "msp_errors.h"

VALUE rb_mXfSdk;

void
Init_xf_sdk(void)
{
  rb_mXfSdk = rb_define_module("XfSdk");

  rb_define_singleton_method(rb_mXfSdk, "tts", tts, 2);
  rb_define_singleton_method(rb_mXfSdk, "success?", is_success, 1);
}

VALUE is_success(VALUE mod, VALUE code) {
  return NUM2INT(code) == MSP_SUCCESS ? Qtrue : Qfalse;
}
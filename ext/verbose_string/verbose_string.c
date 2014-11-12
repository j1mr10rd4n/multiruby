#include <ruby.h>
#include <ruby/version.h>

static VALUE rb_verbose_string_description_from_c(VALUE verbose_str)
{
  char str[80];
  strcpy(str, "From C - ");
  strcat(str, ruby_description);

  return rb_str_new2(str);
}

void Init_verbose_string()
{
  VALUE rb_cVerboseString = rb_define_class("VerboseString", rb_cString);
  rb_define_protected_method(rb_cVerboseString, "description_from_c", rb_verbose_string_description_from_c, 0);
}


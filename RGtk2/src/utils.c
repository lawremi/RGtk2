#include "RGtk2/gobject.h"

void
RGtkDebug()
{
    GLogLevelFlags fatal_mask;

    fatal_mask = g_log_set_always_fatal (G_LOG_FATAL_MASK);
    fatal_mask |= G_LOG_LEVEL_WARNING | G_LOG_LEVEL_CRITICAL;
    g_log_set_always_fatal (fatal_mask);
}

/* Not used
void
Rgtk_bitAnd(Sint *val, Sint *els, Sint *len, Sint *ans)
{
    int i;
    for(i = 0; i < *len; i++) {
    ans[i] = ((unsigned int) els[i]) & ((unsigned int) val[0]);
    }
}
*/

/*  Allows returning values received by reference as a list.
    The actual return value from the bound function is the first element
    and is named "retval". The others are named according to the argument names.
*/
USER_OBJECT_
retByVal(USER_OBJECT_ retval, ...) {
    va_list va;
    int n = 0, i;
    USER_OBJECT_ list, names;
    va_start(va, retval);
    while(va_arg(va, void *)) n++;
    n = n / 2 + 1;
    va_end(va);

    PROTECT(list = NEW_LIST(n));
    PROTECT(names = NEW_CHARACTER(n));
    SET_VECTOR_ELT(list, 0, retval);
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING("retval"));
    va_start(va, retval);
    for (i = 1; i < n; i++) {
        SET_STRING_ELT(names, i, COPY_TO_USER_STRING(va_arg(va, char *)));
        SET_VECTOR_ELT(list, i, va_arg(va, USER_OBJECT_));
    }
    va_end(va);
    SET_NAMES(list, names);
    UNPROTECT(2);
    return list;
}

/* Generic callback stuff */
void R_freeCBData(R_CallbackData *cbdata) {
    R_ReleaseObject(cbdata->function);

    if(cbdata->useData && cbdata->data != NULL) {
        R_ReleaseObject(cbdata->data);
    }

    g_free(cbdata);
}

USER_OBJECT_
getNumericType(USER_OBJECT_ s)
{
  /* Get the numeric type code for an R object */
  /*return asRNumeric(TYPEOF(s));*/
  /* Instead, get the numeric type for an R type name */
  return asRNumeric(str2type(asCString(s)));
}

/* Provide bindtextdomain() for the libintl linked to RGtk2.
   Windows-specific fix. Code taken directly from R, errors.c.
*/


#include <libintl.h>

/* bindtextdomain(domain, dirname) */
SEXP RGtk2_bindtextdomain(SEXP args)
{
  char *res;
  if(!isString(CAR(args)) || LENGTH(CAR(args)) != 1)
    error("invalid 'domain' value");
  if(isNull(CADR(args))) {
    res = bindtextdomain(translateChar(STRING_ELT(CAR(args),0)), NULL);
  } else {
    if(!isString(CADR(args)) || LENGTH(CADR(args)) != 1)
      error("invalid 'dirname' value");
    res = bindtextdomain(translateChar(STRING_ELT(CAR(args),0)),
                         translateChar(STRING_ELT(CADR(args),0)));
  }
  if(res) return mkString(res);
  /* else this failed */
  return R_NilValue;
}

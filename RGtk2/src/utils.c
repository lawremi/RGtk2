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

/**

 The idea is that the `val' argument is either an integer
 or a string. If it is an integer, we check that it is a
 value in the array cValues[] array.
 If it is a string, we look through the two arrays of names
 (the real names from the header files and the local names/aliases
  from the .defs files from which the enumerations are built.)

  If the value is matched, the associated integer is returned.

 */
 /* not used 
USER_OBJECT_
S_checkEnum(USER_OBJECT_ val, const char *const localNames[], const char *const realNames[],
                          const int cValues[], int len, const char *const enumName)
{
    int i = 0;
    USER_OBJECT_ names, ans = NULL_USER_OBJECT;
    if(IS_INTEGER(val) || IS_NUMERIC(val)) {
        int cval;
        if(IS_INTEGER(val))
            cval = INTEGER_DATA(val)[0];
        else
            cval = NUMERIC_DATA(val)[0];
    for(i = 0; i < len ; i++) {
        if(cValues[i] == cval) {
        ans = val;
        break;
        }
    }
        if(i == len) {
          PROBLEM "Invalid enum value: %d", INTEGER_DATA(val)[0]
          ERROR;
    }
    } else if(IS_CHARACTER(val)) {
    char *tmp = CHAR_DEREF(STRING_ELT(val, 0));
    for(i = 0; i < len; i++) {
        if(strcmp(tmp, localNames[i]) == 0 || strcmp(tmp, realNames[i]) == 0) {
            PROTECT(ans = NEW_INTEGER(1));
            INTEGER_DATA(ans)[0] = cValues[i];
            break;
        }
    }
    if(i == len) {
          PROBLEM "Invalid enum name: %s", tmp
          ERROR;
    }
    } else {
         PROBLEM "Invalid argument type (%d) passed to S_checkEnum.",
            TYPEOF(val)
     ERROR;
    }

    PROTECT(names = NEW_CHARACTER(1));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(realNames[i]));
    SET_NAMES(ans, names);

    PROTECT(names = NEW_CHARACTER(2));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(enumName));
    SET_STRING_ELT(names, 1, COPY_TO_USER_STRING("enum"));
    SET_CLASS(ans, names);

    UNPROTECT(ans == val ? 2 : 3);

    return(ans);
}
*/

/**
  val can be an integer or a character vector.
  If it is a character vector, we build up the actual value by
  OR'ing the values in cValues[] by matching the elements in the vector
  with the elements in localNames or realNames.
 */
/* not used
USER_OBJECT_
S_checkFlag(USER_OBJECT_ val, const char *const localNames[], const char *const realNames[],
                          const int cValues[], int len, const char *const flagName)
{
    int i, j, n;
    USER_OBJECT_ ans, names;
    int numProtects = 0;
    n = GET_LENGTH(val);

    if(IS_INTEGER(val)) {
    for(i = 0; i < n ; i++) {
        for(j = 0; j < len; j++) {
        if(!(cValues[j] | INTEGER_DATA(val)[i]))
           PROBLEM "incorrect flag value: %d", INTEGER_DATA(val)[0]
           ERROR;
        }
    }
        ans = val;
    } else {
    int value = 0;
    for(i = 0; i < n; i++) {
        char *tmp = CHAR_DEREF(STRING_ELT(val, i));
            for(j = 0; j < len; j++)
        if(strcmp(tmp, localNames[j]) == 0 || strcmp(tmp, realNames[j]) == 0) {
        value = value | cValues[j];
                break;
        }
            if(j == len) {
               PROBLEM "Invalid flag name: %s", tmp
               ERROR;
        }
    }
        PROTECT(ans = NEW_INTEGER(1));
        numProtects = 1;
        INTEGER_DATA(ans)[0] = value;
   }

    PROTECT(names = NEW_CHARACTER(2));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(flagName));
    SET_STRING_ELT(names, 1, COPY_TO_USER_STRING("flag"));
    SET_CLASS(ans, names);

    UNPROTECT(numProtects + 1);

    return(ans);
}
*/

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

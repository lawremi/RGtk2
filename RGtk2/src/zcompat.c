#include "RGtk2/gtk.h"

USER_OBJECT_
R_gtkCListGetText(USER_OBJECT_ clist,  USER_OBJECT_ dims)
{
  char *tmp;
  SEXP ans;
  int n, i, ctr;
  GtkCList *w;

  w = GTK_CLIST(getPtrValue(clist));

  n = Rf_length(dims)/2;
  PROTECT(ans = NEW_CHARACTER(n));

 for(i = 0, ctr = 0; i < n; i++, ctr += 2) {
     gtk_clist_get_text(w, INTEGER(dims)[ctr], INTEGER(dims)[ctr + 1], &tmp);  
     if(tmp && tmp[0])
         SET_STRING_ELT(ans, i, COPY_TO_USER_STRING(tmp));
  }

  UNPROTECT(1);
  return(ans);
}

USER_OBJECT_
R_gtkCListSetText(USER_OBJECT_ clist,  USER_OBJECT_ dims, USER_OBJECT_ vals)
{
  const char *tmp;
  SEXP ans = NULL_USER_OBJECT;
  int n, i, ctr;
  GtkCList *w;

  w = GTK_CLIST(getPtrValue(clist));

  n = Rf_length(vals);
  for(i = 0, ctr = 0; i < n; i++, ctr += 2) {
     tmp = asCString(STRING_ELT(vals, i)); 
     gtk_clist_set_text(w, INTEGER(dims)[i], INTEGER(dims)[i + n], tmp);  
  }

  return(ans);
}

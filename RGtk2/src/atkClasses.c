#include "RGtk2/atkClasses.h"
static SEXP S_AtkHyperlink_symbol;

static gchar*
S_virtual_atk_hyperlink_get_uri(AtkHyperlink* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static AtkObject*
S_virtual_atk_hyperlink_get_object(AtkHyperlink* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static gint
S_virtual_atk_hyperlink_get_end_index(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_hyperlink_get_start_index(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gboolean
S_virtual_atk_hyperlink_is_valid(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gint
S_virtual_atk_hyperlink_get_n_anchors(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static guint
S_virtual_atk_hyperlink_link_state(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((guint)0));
  return(((guint)asCNumeric(s_ans)));
}

static gboolean
S_virtual_atk_hyperlink_is_selected_link(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_hyperlink_link_activated(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHyperlink")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_hyperlink_class_init(AtkHyperlinkClass * c, SEXP e)
{
  SEXP s;

  S_AtkHyperlink_symbol = install("AtkHyperlink");
  s = PROTECT(findVar(S_AtkHyperlink_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkHyperlinkClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_uri = S_virtual_atk_hyperlink_get_uri;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_object = S_virtual_atk_hyperlink_get_object;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_end_index = S_virtual_atk_hyperlink_get_end_index;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_start_index = S_virtual_atk_hyperlink_get_start_index;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->is_valid = S_virtual_atk_hyperlink_is_valid;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_n_anchors = S_virtual_atk_hyperlink_get_n_anchors;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->link_state = S_virtual_atk_hyperlink_link_state;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->is_selected_link = S_virtual_atk_hyperlink_is_selected_link;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->link_activated = S_virtual_atk_hyperlink_link_activated;
}
USER_OBJECT_
S_atk_hyperlink_class_get_uri(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gchar* ans;

  ans = object_class->get_uri(object, i);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_get_object(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = object_class->get_object(object, i);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_get_end_index(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_end_index(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_get_start_index(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_start_index(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_is_valid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_valid(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_get_n_anchors(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_anchors(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_link_state(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  guint ans;

  ans = object_class->link_state(object);

  _result = asRNumeric(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_is_selected_link(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_selected_link(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hyperlink_class_link_activated(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHyperlinkClass* object_class = ((AtkHyperlinkClass*)getPtrValue(s_object_class));
  AtkHyperlink* object = ATK_HYPERLINK(getPtrValue(s_object));


  object_class->link_activated(object);


  return(_result);
}
 

static SEXP S_AtkObject_symbol;

static const gchar*
S_virtual_atk_object_get_name(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static const gchar*
S_virtual_atk_object_get_description(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static AtkObject*
S_virtual_atk_object_get_parent(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static gint
S_virtual_atk_object_get_n_children(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static AtkObject*
S_virtual_atk_object_ref_child(AtkObject* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}

static gint
S_virtual_atk_object_get_index_in_parent(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static AtkRelationSet*
S_virtual_atk_object_ref_relation_set(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkRelationSet*)0));
  return(ATK_RELATION_SET(getPtrValueWithRef(s_ans)));
}

static AtkRole
S_virtual_atk_object_get_role(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkRole)0));
  return(((AtkRole)asCEnum(s_ans, ATK_TYPE_ROLE)));
}

static AtkLayer
S_virtual_atk_object_get_layer(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkLayer)0));
  return(((AtkLayer)asCEnum(s_ans, ATK_TYPE_LAYER)));
}

static gint
S_virtual_atk_object_get_mdi_zorder(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static AtkStateSet*
S_virtual_atk_object_ref_state_set(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkStateSet*)0));
  return(ATK_STATE_SET(getPtrValueWithRef(s_ans)));
}

static void
S_virtual_atk_object_set_name(AtkObject* s_object, const gchar* s_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_set_description(AtkObject* s_object, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_set_parent(AtkObject* s_object, AtkObject* s_parent)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_parent, toRPointerWithRef(s_parent, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_set_role(AtkObject* s_object, AtkRole s_role)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_role, ATK_TYPE_ROLE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_remove_property_change_handler(AtkObject* s_object, guint s_handler_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_handler_id));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_initialize(AtkObject* s_object, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_children_changed(AtkObject* s_object, guint s_change_index, AtkObject* s_changed_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_change_index));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_changed_child, toRPointerWithRef(s_changed_child, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_focus_event(AtkObject* s_object, gboolean s_focus_in)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_focus_in));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_state_change(AtkObject* s_object, const gchar* s_name, gboolean s_state_set)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_state_set));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_visible_data_changed(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_object_active_descendant_changed(AtkObject* s_object, AtkObject* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObject")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_child, toRPointerWithRef(s_child, "AtkObject")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_object_class_init(AtkObjectClass * c, SEXP e)
{
  SEXP s;

  S_AtkObject_symbol = install("AtkObject");
  s = PROTECT(findVar(S_AtkObject_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkObjectClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_name = S_virtual_atk_object_get_name;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_description = S_virtual_atk_object_get_description;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_parent = S_virtual_atk_object_get_parent;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_n_children = S_virtual_atk_object_get_n_children;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->ref_child = S_virtual_atk_object_ref_child;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_index_in_parent = S_virtual_atk_object_get_index_in_parent;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->ref_relation_set = S_virtual_atk_object_ref_relation_set;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_role = S_virtual_atk_object_get_role;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->get_layer = S_virtual_atk_object_get_layer;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_mdi_zorder = S_virtual_atk_object_get_mdi_zorder;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->ref_state_set = S_virtual_atk_object_ref_state_set;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->set_name = S_virtual_atk_object_set_name;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->set_description = S_virtual_atk_object_set_description;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->set_parent = S_virtual_atk_object_set_parent;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->set_role = S_virtual_atk_object_set_role;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->remove_property_change_handler = S_virtual_atk_object_remove_property_change_handler;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->initialize = S_virtual_atk_object_initialize;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->children_changed = S_virtual_atk_object_children_changed;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->focus_event = S_virtual_atk_object_focus_event;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->state_change = S_virtual_atk_object_state_change;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->visible_data_changed = S_virtual_atk_object_visible_data_changed;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->active_descendant_changed = S_virtual_atk_object_active_descendant_changed;
}
USER_OBJECT_
S_atk_object_class_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  const gchar* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  const gchar* ans;

  ans = object_class->get_description(object);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkObject* ans;

  ans = object_class->get_parent(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_n_children(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_children(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_ref_child(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = object_class->ref_child(object, i);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_index_in_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_index_in_parent(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_ref_relation_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkRelationSet* ans;

  ans = object_class->ref_relation_set(object);

  _result = toRPointerWithFinalizer(ans, "AtkRelationSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_role(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkRole ans;

  ans = object_class->get_role(object);

  _result = asREnum(ans, ATK_TYPE_ROLE);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_layer(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkLayer ans;

  ans = object_class->get_layer(object);

  _result = asREnum(ans, ATK_TYPE_LAYER);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_get_mdi_zorder(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_mdi_zorder(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_ref_state_set(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));

  AtkStateSet* ans;

  ans = object_class->ref_state_set(object);

  _result = toRPointerWithFinalizer(ans, "AtkStateSet", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_object_class_set_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));


  object_class->set_name(object, name);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_set_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  const gchar* description = ((const gchar*)asCString(s_description));


  object_class->set_description(object, description);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_set_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_parent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkObject* parent = ATK_OBJECT(getPtrValue(s_parent));


  object_class->set_parent(object, parent);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_set_role(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_role)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkRole role = ((AtkRole)asCEnum(s_role, ATK_TYPE_ROLE));


  object_class->set_role(object, role);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_remove_property_change_handler(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  guint handler_id = ((guint)asCNumeric(s_handler_id));


  object_class->remove_property_change_handler(object, handler_id);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_initialize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  gpointer data = ((gpointer)asCGenericData(s_data));


  object_class->initialize(object, data);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_children_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_change_index, USER_OBJECT_ s_changed_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  guint change_index = ((guint)asCNumeric(s_change_index));
  AtkObject* changed_child = ATK_OBJECT(getPtrValue(s_changed_child));


  object_class->children_changed(object, change_index, changed_child);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_focus_event(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_focus_in)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  gboolean focus_in = ((gboolean)asCLogical(s_focus_in));


  object_class->focus_event(object, focus_in);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_state_change(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_state_set)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));
  gboolean state_set = ((gboolean)asCLogical(s_state_set));


  object_class->state_change(object, name, state_set);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_visible_data_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));


  object_class->visible_data_changed(object);


  return(_result);
}

USER_OBJECT_
S_atk_object_class_active_descendant_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_child)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectClass* object_class = ((AtkObjectClass*)getPtrValue(s_object_class));
  AtkObject* object = ATK_OBJECT(getPtrValue(s_object));
  AtkObject* child = ATK_OBJECT(getPtrValue(s_child));


  object_class->active_descendant_changed(object, child);


  return(_result);
}
 

static SEXP S_AtkGObjectAccessible_symbol;
void
S_atk_gobject_accessible_class_init(AtkGObjectAccessibleClass * c, SEXP e)
{
  SEXP s;

  S_AtkGObjectAccessible_symbol = install("AtkGObjectAccessible");
  s = PROTECT(findVar(S_AtkGObjectAccessible_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkGObjectAccessibleClass)) = e;

  S_atk_object_class_init(((AtkObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkNoOpObject_symbol;
void
S_atk_no_op_object_class_init(AtkNoOpObjectClass * c, SEXP e)
{
  SEXP s;

  S_AtkNoOpObject_symbol = install("AtkNoOpObject");
  s = PROTECT(findVar(S_AtkNoOpObject_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkNoOpObjectClass)) = e;

  S_atk_object_class_init(((AtkObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkObjectFactory_symbol;

static void
S_virtual_atk_object_factory_invalidate(AtkObjectFactory* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObjectFactory_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkObjectFactory")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_object_factory_class_init(AtkObjectFactoryClass * c, SEXP e)
{
  SEXP s;

  S_AtkObjectFactory_symbol = install("AtkObjectFactory");
  s = PROTECT(findVar(S_AtkObjectFactory_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkObjectFactoryClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->invalidate = S_virtual_atk_object_factory_invalidate;
}
USER_OBJECT_
S_atk_object_factory_class_invalidate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkObjectFactoryClass* object_class = ((AtkObjectFactoryClass*)getPtrValue(s_object_class));
  AtkObjectFactory* object = ATK_OBJECT_FACTORY(getPtrValue(s_object));


  object_class->invalidate(object);


  return(_result);
}
 

static SEXP S_AtkNoOpObjectFactory_symbol;
void
S_atk_no_op_object_factory_class_init(AtkNoOpObjectFactoryClass * c, SEXP e)
{
  SEXP s;

  S_AtkNoOpObjectFactory_symbol = install("AtkNoOpObjectFactory");
  s = PROTECT(findVar(S_AtkNoOpObjectFactory_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkNoOpObjectFactoryClass)) = e;

  S_atk_object_factory_class_init(((AtkObjectFactoryClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkRegistry_symbol;
void
S_atk_registry_class_init(AtkRegistryClass * c, SEXP e)
{
  SEXP s;

  S_AtkRegistry_symbol = install("AtkRegistry");
  s = PROTECT(findVar(S_AtkRegistry_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRegistryClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkRelation_symbol;
void
S_atk_relation_class_init(AtkRelationClass * c, SEXP e)
{
  SEXP s;

  S_AtkRelation_symbol = install("AtkRelation");
  s = PROTECT(findVar(S_AtkRelation_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRelationClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkRelationSet_symbol;
void
S_atk_relation_set_class_init(AtkRelationSetClass * c, SEXP e)
{
  SEXP s;

  S_AtkRelationSet_symbol = install("AtkRelationSet");
  s = PROTECT(findVar(S_AtkRelationSet_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRelationSetClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkStateSet_symbol;
void
S_atk_state_set_class_init(AtkStateSetClass * c, SEXP e)
{
  SEXP s;

  S_AtkStateSet_symbol = install("AtkStateSet");
  s = PROTECT(findVar(S_AtkStateSet_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkStateSetClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkUtil_symbol;
void
S_atk_util_class_init(AtkUtilClass * c, SEXP e)
{
  SEXP s;

  S_AtkUtil_symbol = install("AtkUtil");
  s = PROTECT(findVar(S_AtkUtil_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkUtilClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

} 

static SEXP S_AtkTable_symbol;

static AtkObject*
S_virtual_atk_table_ref_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}

static gint
S_virtual_atk_table_get_index_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_column_at_index(AtkTable* s_object, gint s_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_row_at_index(AtkTable* s_object, gint s_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_n_columns(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_n_rows(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_column_extent_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_table_get_row_extent_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static AtkObject*
S_virtual_atk_table_get_caption(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static const gchar*
S_virtual_atk_table_get_column_description(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static AtkObject*
S_virtual_atk_table_get_column_header(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static const gchar*
S_virtual_atk_table_get_row_description(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static AtkObject*
S_virtual_atk_table_get_row_header(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static AtkObject*
S_virtual_atk_table_get_summary(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValue(s_ans)));
}

static void
S_virtual_atk_table_set_caption(AtkTable* s_object, AtkObject* s_caption)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_caption, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_set_column_description(AtkTable* s_object, gint s_column, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_set_column_header(AtkTable* s_object, gint s_column, AtkObject* s_header)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_header, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_set_row_description(AtkTable* s_object, gint s_row, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_set_row_header(AtkTable* s_object, gint s_row, AtkObject* s_header)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_header, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_set_summary(AtkTable* s_object, AtkObject* s_accessible)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_accessible, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gint
S_virtual_atk_table_get_selected_columns(AtkTable* s_object, gint** s_selected)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  *s_selected = ((gint*)asCArrayDup(VECTOR_ELT(s_ans, 1), gint, asCInteger));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gint
S_virtual_atk_table_get_selected_rows(AtkTable* s_object, gint** s_selected)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  *s_selected = ((gint*)asCArrayDup(VECTOR_ELT(s_ans, 1), gint, asCInteger));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_atk_table_is_column_selected(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_is_row_selected(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_is_selected(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_add_row_selection(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_remove_row_selection(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_add_column_selection(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_table_remove_column_selection(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 28));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_table_row_inserted(AtkTable* s_object, gint s_row, gint s_num_inserted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 29));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_inserted));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_column_inserted(AtkTable* s_object, gint s_column, gint s_num_inserted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 30));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_inserted));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_row_deleted(AtkTable* s_object, gint s_row, gint s_num_deleted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 31));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_deleted));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_column_deleted(AtkTable* s_object, gint s_column, gint s_num_deleted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 32));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_deleted));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_row_reordered(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 33));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_column_reordered(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 34));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_table_model_changed(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 35));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkTable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_table_class_init(AtkTableIface * c, SEXP e)
{
  SEXP s;

  S_AtkTable_symbol = install("AtkTable");
  s = PROTECT(findVar(S_AtkTable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkTableIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->ref_at = S_virtual_atk_table_ref_at;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_index_at = S_virtual_atk_table_get_index_at;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_column_at_index = S_virtual_atk_table_get_column_at_index;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_row_at_index = S_virtual_atk_table_get_row_at_index;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_n_columns = S_virtual_atk_table_get_n_columns;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_n_rows = S_virtual_atk_table_get_n_rows;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_column_extent_at = S_virtual_atk_table_get_column_extent_at;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_row_extent_at = S_virtual_atk_table_get_row_extent_at;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->get_caption = S_virtual_atk_table_get_caption;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_column_description = S_virtual_atk_table_get_column_description;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->get_column_header = S_virtual_atk_table_get_column_header;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->get_row_description = S_virtual_atk_table_get_row_description;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->get_row_header = S_virtual_atk_table_get_row_header;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->get_summary = S_virtual_atk_table_get_summary;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->set_caption = S_virtual_atk_table_set_caption;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->set_column_description = S_virtual_atk_table_set_column_description;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->set_column_header = S_virtual_atk_table_set_column_header;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->set_row_description = S_virtual_atk_table_set_row_description;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->set_row_header = S_virtual_atk_table_set_row_header;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->set_summary = S_virtual_atk_table_set_summary;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->get_selected_columns = S_virtual_atk_table_get_selected_columns;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->get_selected_rows = S_virtual_atk_table_get_selected_rows;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->is_column_selected = S_virtual_atk_table_is_column_selected;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->is_row_selected = S_virtual_atk_table_is_row_selected;
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->is_selected = S_virtual_atk_table_is_selected;
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->add_row_selection = S_virtual_atk_table_add_row_selection;
  if(VECTOR_ELT(s, 26) != NULL_USER_OBJECT)
    c->remove_row_selection = S_virtual_atk_table_remove_row_selection;
  if(VECTOR_ELT(s, 27) != NULL_USER_OBJECT)
    c->add_column_selection = S_virtual_atk_table_add_column_selection;
  if(VECTOR_ELT(s, 28) != NULL_USER_OBJECT)
    c->remove_column_selection = S_virtual_atk_table_remove_column_selection;
  if(VECTOR_ELT(s, 29) != NULL_USER_OBJECT)
    c->row_inserted = S_virtual_atk_table_row_inserted;
  if(VECTOR_ELT(s, 30) != NULL_USER_OBJECT)
    c->column_inserted = S_virtual_atk_table_column_inserted;
  if(VECTOR_ELT(s, 31) != NULL_USER_OBJECT)
    c->row_deleted = S_virtual_atk_table_row_deleted;
  if(VECTOR_ELT(s, 32) != NULL_USER_OBJECT)
    c->column_deleted = S_virtual_atk_table_column_deleted;
  if(VECTOR_ELT(s, 33) != NULL_USER_OBJECT)
    c->row_reordered = S_virtual_atk_table_row_reordered;
  if(VECTOR_ELT(s, 34) != NULL_USER_OBJECT)
    c->column_reordered = S_virtual_atk_table_column_reordered;
  if(VECTOR_ELT(s, 35) != NULL_USER_OBJECT)
    c->model_changed = S_virtual_atk_table_model_changed;
}
USER_OBJECT_
S_atk_table_iface_ref_at(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  AtkObject* ans;

  ans = object_class->ref_at(object, row, column);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_index_at(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = object_class->get_index_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_column_at_index(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint index = ((gint)asCInteger(s_index));

  gint ans;

  ans = object_class->get_column_at_index(object, index);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_row_at_index(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint index = ((gint)asCInteger(s_index));

  gint ans;

  ans = object_class->get_row_at_index(object, index);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_n_columns(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_columns(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_n_rows(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_rows(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_column_extent_at(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = object_class->get_column_extent_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_row_extent_at(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gint ans;

  ans = object_class->get_row_extent_at(object, row, column);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_caption(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  AtkObject* ans;

  ans = object_class->get_caption(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_column_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  const gchar* ans;

  ans = object_class->get_column_description(object, column);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_column_header(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  AtkObject* ans;

  ans = object_class->get_column_header(object, column);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_row_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  const gchar* ans;

  ans = object_class->get_row_description(object, row);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_row_header(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  AtkObject* ans;

  ans = object_class->get_row_header(object, row);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_summary(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  AtkObject* ans;

  ans = object_class->get_summary(object);

  _result = toRPointerWithRef(ans, "AtkObject");

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_caption(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_caption)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  AtkObject* caption = ATK_OBJECT(getPtrValue(s_caption));


  object_class->set_caption(object, caption);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_column_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  const gchar* description = ((const gchar*)asCString(s_description));


  object_class->set_column_description(object, column, description);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_column_header(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_header)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  AtkObject* header = ATK_OBJECT(getPtrValue(s_header));


  object_class->set_column_header(object, column, header);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_row_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  const gchar* description = ((const gchar*)asCString(s_description));


  object_class->set_row_description(object, row, description);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_row_header(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_header)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  AtkObject* header = ATK_OBJECT(getPtrValue(s_header));


  object_class->set_row_header(object, row, header);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_set_summary(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_accessible)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  AtkObject* accessible = ATK_OBJECT(getPtrValue(s_accessible));


  object_class->set_summary(object, accessible);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_selected_columns(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;
  gint* selected = NULL;

  ans = object_class->get_selected_columns(object, &selected);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "selected", PROTECT(asRIntegerArrayWithSize(selected, ans)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, selected);;

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_get_selected_rows(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));

  gint ans;
  gint* selected = NULL;

  ans = object_class->get_selected_rows(object, &selected);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "selected", PROTECT(asRIntegerArrayWithSize(selected, ans)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, selected);;

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_is_column_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = object_class->is_column_selected(object, column);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_is_row_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = object_class->is_row_selected(object, row);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_is_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = object_class->is_selected(object, row, column);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_add_row_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = object_class->add_row_selection(object, row);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_remove_row_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));

  gboolean ans;

  ans = object_class->remove_row_selection(object, row);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_add_column_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = object_class->add_column_selection(object, column);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_remove_column_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));

  gboolean ans;

  ans = object_class->remove_column_selection(object, column);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_table_iface_row_inserted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_num_inserted)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint num_inserted = ((gint)asCInteger(s_num_inserted));


  object_class->row_inserted(object, row, num_inserted);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_column_inserted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_num_inserted)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  gint num_inserted = ((gint)asCInteger(s_num_inserted));


  object_class->column_inserted(object, column, num_inserted);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_row_deleted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_num_deleted)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint row = ((gint)asCInteger(s_row));
  gint num_deleted = ((gint)asCInteger(s_num_deleted));


  object_class->row_deleted(object, row, num_deleted);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_column_deleted(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_num_deleted)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));
  gint column = ((gint)asCInteger(s_column));
  gint num_deleted = ((gint)asCInteger(s_num_deleted));


  object_class->column_deleted(object, column, num_deleted);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_row_reordered(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));


  object_class->row_reordered(object);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_column_reordered(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));


  object_class->column_reordered(object);


  return(_result);
}

USER_OBJECT_
S_atk_table_iface_model_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTableIface* object_class = ((AtkTableIface*)getPtrValue(s_object_class));
  AtkTable* object = ATK_TABLE(getPtrValue(s_object));


  object_class->model_changed(object);


  return(_result);
}
 

static SEXP S_AtkStreamableContent_symbol;

static gint
S_virtual_atk_streamable_content_get_n_mime_types(AtkStreamableContent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkStreamableContent_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkStreamableContent")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static const gchar*
S_virtual_atk_streamable_content_get_mime_type(AtkStreamableContent* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkStreamableContent_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkStreamableContent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}
void
S_atk_streamable_content_class_init(AtkStreamableContentIface * c, SEXP e)
{
  SEXP s;

  S_AtkStreamableContent_symbol = install("AtkStreamableContent");
  s = PROTECT(findVar(S_AtkStreamableContent_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkStreamableContentIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_n_mime_types = S_virtual_atk_streamable_content_get_n_mime_types;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_mime_type = S_virtual_atk_streamable_content_get_mime_type;
}
USER_OBJECT_
S_atk_streamable_content_iface_get_n_mime_types(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStreamableContentIface* object_class = ((AtkStreamableContentIface*)getPtrValue(s_object_class));
  AtkStreamableContent* object = ATK_STREAMABLE_CONTENT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_mime_types(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_streamable_content_iface_get_mime_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkStreamableContentIface* object_class = ((AtkStreamableContentIface*)getPtrValue(s_object_class));
  AtkStreamableContent* object = ATK_STREAMABLE_CONTENT(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = object_class->get_mime_type(object, i);

  _result = asRString(ans);

  return(_result);
}
 

static SEXP S_AtkSelection_symbol;

static gboolean
S_virtual_atk_selection_add_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_selection_clear_selection(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static AtkObject*
S_virtual_atk_selection_ref_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}

static gint
S_virtual_atk_selection_get_selection_count(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gboolean
S_virtual_atk_selection_is_child_selected(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_selection_remove_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_selection_select_all_selection(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_selection_selection_changed(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkSelection")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_selection_class_init(AtkSelectionIface * c, SEXP e)
{
  SEXP s;

  S_AtkSelection_symbol = install("AtkSelection");
  s = PROTECT(findVar(S_AtkSelection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkSelectionIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->add_selection = S_virtual_atk_selection_add_selection;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->clear_selection = S_virtual_atk_selection_clear_selection;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->ref_selection = S_virtual_atk_selection_ref_selection;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_selection_count = S_virtual_atk_selection_get_selection_count;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->is_child_selected = S_virtual_atk_selection_is_child_selected;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->remove_selection = S_virtual_atk_selection_remove_selection;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->select_all_selection = S_virtual_atk_selection_select_all_selection;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->selection_changed = S_virtual_atk_selection_selection_changed;
}
USER_OBJECT_
S_atk_selection_iface_add_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = object_class->add_selection(object, i);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_clear_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->clear_selection(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_ref_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  AtkObject* ans;

  ans = object_class->ref_selection(object, i);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_get_selection_count(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_selection_count(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_is_child_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = object_class->is_child_selected(object, i);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_remove_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = object_class->remove_selection(object, i);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_select_all_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->select_all_selection(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_selection_iface_selection_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkSelectionIface* object_class = ((AtkSelectionIface*)getPtrValue(s_object_class));
  AtkSelection* object = ATK_SELECTION(getPtrValue(s_object));


  object_class->selection_changed(object);


  return(_result);
}
 

static SEXP S_AtkImplementor_symbol;

static AtkObject*
S_virtual_atk_implementor_ref_accessible(AtkImplementor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImplementor_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkImplementor")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
void
S_atk_implementor_class_init(AtkImplementorIface * c, SEXP e)
{
  SEXP s;

  S_AtkImplementor_symbol = install("AtkImplementor");
  s = PROTECT(findVar(S_AtkImplementor_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkImplementorIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->ref_accessible = S_virtual_atk_implementor_ref_accessible;
}
USER_OBJECT_
S_atk_implementor_iface_ref_accessible(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImplementorIface* object_class = ((AtkImplementorIface*)getPtrValue(s_object_class));
  AtkImplementor* object = ATK_IMPLEMENTOR(getPtrValue(s_object));

  AtkObject* ans;

  ans = object_class->ref_accessible(object);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

static SEXP S_AtkImage_symbol;

static void
S_virtual_atk_image_get_image_position(AtkImage* s_object, gint* s_x, gint* s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkImage")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}

static const gchar*
S_virtual_atk_image_get_image_description(AtkImage* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkImage")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static void
S_virtual_atk_image_get_image_size(AtkImage* s_object, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkImage")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}

static gboolean
S_virtual_atk_image_set_image_description(AtkImage* s_object, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkImage")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_atk_image_class_init(AtkImageIface * c, SEXP e)
{
  SEXP s;

  S_AtkImage_symbol = install("AtkImage");
  s = PROTECT(findVar(S_AtkImage_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkImageIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_image_position = S_virtual_atk_image_get_image_position;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_image_description = S_virtual_atk_image_get_image_description;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_image_size = S_virtual_atk_image_get_image_size;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_image_description = S_virtual_atk_image_set_image_description;
}
USER_OBJECT_
S_atk_image_iface_get_image_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImageIface* object_class = ((AtkImageIface*)getPtrValue(s_object_class));
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;

  object_class->get_image_position(object, &x, &y, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_image_iface_get_image_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImageIface* object_class = ((AtkImageIface*)getPtrValue(s_object_class));
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));

  const gchar* ans;

  ans = object_class->get_image_description(object);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_image_iface_get_image_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImageIface* object_class = ((AtkImageIface*)getPtrValue(s_object_class));
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));

  gint width;
  gint height;

  object_class->get_image_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_image_iface_set_image_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_description)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkImageIface* object_class = ((AtkImageIface*)getPtrValue(s_object_class));
  AtkImage* object = ATK_IMAGE(getPtrValue(s_object));
  const gchar* description = ((const gchar*)asCString(s_description));

  gboolean ans;

  ans = object_class->set_image_description(object, description);

  _result = asRLogical(ans);

  return(_result);
}
 

static SEXP S_AtkHypertext_symbol;

static AtkHyperlink*
S_virtual_atk_hypertext_get_link(AtkHypertext* s_object, gint s_link_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHypertext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_link_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkHyperlink*)0));
  return(ATK_HYPERLINK(getPtrValue(s_ans)));
}

static gint
S_virtual_atk_hypertext_get_n_links(AtkHypertext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHypertext")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_hypertext_get_link_index(AtkHypertext* s_object, gint s_char_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHypertext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_char_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static void
S_virtual_atk_hypertext_link_selected(AtkHypertext* s_object, gint s_link_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkHypertext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_link_index));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_hypertext_class_init(AtkHypertextIface * c, SEXP e)
{
  SEXP s;

  S_AtkHypertext_symbol = install("AtkHypertext");
  s = PROTECT(findVar(S_AtkHypertext_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkHypertextIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_link = S_virtual_atk_hypertext_get_link;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_n_links = S_virtual_atk_hypertext_get_n_links;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_link_index = S_virtual_atk_hypertext_get_link_index;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->link_selected = S_virtual_atk_hypertext_link_selected;
}
USER_OBJECT_
S_atk_hypertext_iface_get_link(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_link_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertextIface* object_class = ((AtkHypertextIface*)getPtrValue(s_object_class));
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));
  gint link_index = ((gint)asCInteger(s_link_index));

  AtkHyperlink* ans;

  ans = object_class->get_link(object, link_index);

  _result = toRPointerWithRef(ans, "AtkHyperlink");

  return(_result);
}

USER_OBJECT_
S_atk_hypertext_iface_get_n_links(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertextIface* object_class = ((AtkHypertextIface*)getPtrValue(s_object_class));
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_links(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hypertext_iface_get_link_index(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_char_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertextIface* object_class = ((AtkHypertextIface*)getPtrValue(s_object_class));
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));
  gint char_index = ((gint)asCInteger(s_char_index));

  gint ans;

  ans = object_class->get_link_index(object, char_index);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_hypertext_iface_link_selected(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_link_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkHypertextIface* object_class = ((AtkHypertextIface*)getPtrValue(s_object_class));
  AtkHypertext* object = ATK_HYPERTEXT(getPtrValue(s_object));
  gint link_index = ((gint)asCInteger(s_link_index));


  object_class->link_selected(object, link_index);


  return(_result);
}
 

static SEXP S_AtkEditableText_symbol;

static gboolean
S_virtual_atk_editable_text_set_run_attributes(AtkEditableText* s_object, AtkAttributeSet* s_attrib_set, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRAtkAttributeSet(s_attrib_set));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_editable_text_set_text_contents(AtkEditableText* s_object, const gchar* s_string)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_editable_text_insert_text(AtkEditableText* s_object, const gchar* s_string, gint s_length, gint* s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRIntegerArrayWithSize(s_position, s_length));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_editable_text_copy_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_editable_text_cut_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_editable_text_delete_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_editable_text_paste_text(AtkEditableText* s_object, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkEditableText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_editable_text_class_init(AtkEditableTextIface * c, SEXP e)
{
  SEXP s;

  S_AtkEditableText_symbol = install("AtkEditableText");
  s = PROTECT(findVar(S_AtkEditableText_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkEditableTextIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->set_run_attributes = S_virtual_atk_editable_text_set_run_attributes;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->set_text_contents = S_virtual_atk_editable_text_set_text_contents;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->insert_text = S_virtual_atk_editable_text_insert_text;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->copy_text = S_virtual_atk_editable_text_copy_text;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->cut_text = S_virtual_atk_editable_text_cut_text;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->delete_text = S_virtual_atk_editable_text_delete_text;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->paste_text = S_virtual_atk_editable_text_paste_text;
}
USER_OBJECT_
S_atk_editable_text_iface_set_run_attributes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attrib_set, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  AtkAttributeSet* attrib_set = asCAtkAttributeSet(s_attrib_set);
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = object_class->set_run_attributes(object, attrib_set, start_offset, end_offset);

  _result = asRLogical(ans);
    CLEANUP(atk_attribute_set_free, ((AtkAttributeSet*)attrib_set));;

  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_set_text_contents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));


  object_class->set_text_contents(object, string);


  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_insert_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_string, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));
  gint length = ((gint)GET_LENGTH(s_position));
  gint* position = ((gint*)asCArray(s_position, gint, asCInteger));


  object_class->insert_text(object, string, length, position);


  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_copy_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->copy_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_cut_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->cut_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_delete_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint start_pos = ((gint)asCInteger(s_start_pos));
  gint end_pos = ((gint)asCInteger(s_end_pos));


  object_class->delete_text(object, start_pos, end_pos);


  return(_result);
}

USER_OBJECT_
S_atk_editable_text_iface_paste_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_position)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkEditableTextIface* object_class = ((AtkEditableTextIface*)getPtrValue(s_object_class));
  AtkEditableText* object = ATK_EDITABLE_TEXT(getPtrValue(s_object));
  gint position = ((gint)asCInteger(s_position));


  object_class->paste_text(object, position);


  return(_result);
}
 

static SEXP S_AtkComponent_symbol;

static gboolean
S_virtual_atk_component_contains(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static AtkObject*
S_virtual_atk_component_ref_accessible_at_point(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkObject*)0));
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}

static void
S_virtual_atk_component_get_extents(AtkComponent* s_object, gint* s_x, gint* s_y, gint* s_width, gint* s_height, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 3)));
}

static void
S_virtual_atk_component_get_position(AtkComponent* s_object, gint* s_x, gint* s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}

static void
S_virtual_atk_component_get_size(AtkComponent* s_object, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}

static gboolean
S_virtual_atk_component_grab_focus(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_component_remove_focus_handler(AtkComponent* s_object, guint s_handler_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_handler_id));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_atk_component_set_extents(AtkComponent* s_object, gint s_x, gint s_y, gint s_width, gint s_height, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_component_set_position(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_component_set_size(AtkComponent* s_object, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static AtkLayer
S_virtual_atk_component_get_layer(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkLayer)0));
  return(((AtkLayer)asCEnum(s_ans, ATK_TYPE_LAYER)));
}

static gint
S_virtual_atk_component_get_mdi_zorder(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static void
S_virtual_atk_component_bounds_changed(AtkComponent* s_object, AtkRectangle* s_bounds)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkComponent")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRAtkRectangle(s_bounds));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_atk_component_class_init(AtkComponentIface * c, SEXP e)
{
  SEXP s;

  S_AtkComponent_symbol = install("AtkComponent");
  s = PROTECT(findVar(S_AtkComponent_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkComponentIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->contains = S_virtual_atk_component_contains;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->ref_accessible_at_point = S_virtual_atk_component_ref_accessible_at_point;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_extents = S_virtual_atk_component_get_extents;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_position = S_virtual_atk_component_get_position;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_size = S_virtual_atk_component_get_size;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->grab_focus = S_virtual_atk_component_grab_focus;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->remove_focus_handler = S_virtual_atk_component_remove_focus_handler;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->set_extents = S_virtual_atk_component_set_extents;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->set_position = S_virtual_atk_component_set_position;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->set_size = S_virtual_atk_component_set_size;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->get_layer = S_virtual_atk_component_get_layer;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->get_mdi_zorder = S_virtual_atk_component_get_mdi_zorder;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->bounds_changed = S_virtual_atk_component_bounds_changed;
}
USER_OBJECT_
S_atk_component_iface_contains(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = object_class->contains(object, x, y, coord_type);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_ref_accessible_at_point(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  AtkObject* ans;

  ans = object_class->ref_accessible_at_point(object, x, y, coord_type);

  _result = toRPointerWithFinalizer(ans, "AtkObject", (RPointerFinalizer) g_object_unref);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_get_extents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;
  gint width;
  gint height;

  object_class->get_extents(object, &x, &y, &width, &height, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_get_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;

  object_class->get_position(object, &x, &y, coord_type);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_get_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gint width;
  gint height;

  object_class->get_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_grab_focus(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->grab_focus(object);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_remove_focus_handler(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  guint handler_id = ((guint)asCNumeric(s_handler_id));


  object_class->remove_focus_handler(object, handler_id);


  return(_result);
}

USER_OBJECT_
S_atk_component_iface_set_extents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = object_class->set_extents(object, x, y, width, height, coord_type);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_set_position(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  gboolean ans;

  ans = object_class->set_position(object, x, y, coord_type);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_set_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));

  gboolean ans;

  ans = object_class->set_size(object, width, height);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_get_layer(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  AtkLayer ans;

  ans = object_class->get_layer(object);

  _result = asREnum(ans, ATK_TYPE_LAYER);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_get_mdi_zorder(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_mdi_zorder(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_component_iface_bounds_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_bounds)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkComponentIface* object_class = ((AtkComponentIface*)getPtrValue(s_object_class));
  AtkComponent* object = ATK_COMPONENT(getPtrValue(s_object));
  AtkRectangle* bounds = asCAtkRectangle(s_bounds);


  object_class->bounds_changed(object, bounds);


  return(_result);
}
 

static SEXP S_AtkAction_symbol;

static gboolean
S_virtual_atk_action_do_action(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gint
S_virtual_atk_action_get_n_actions(AtkAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static const gchar*
S_virtual_atk_action_get_description(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static const gchar*
S_virtual_atk_action_get_name(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static const gchar*
S_virtual_atk_action_get_keybinding(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static gboolean
S_virtual_atk_action_set_description(AtkAction* s_object, gint s_i, const gchar* s_desc)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_desc));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static const gchar*
S_virtual_atk_action_get_localized_name(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkAction")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}
void
S_atk_action_class_init(AtkActionIface * c, SEXP e)
{
  SEXP s;

  S_AtkAction_symbol = install("AtkAction");
  s = PROTECT(findVar(S_AtkAction_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkActionIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->do_action = S_virtual_atk_action_do_action;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_n_actions = S_virtual_atk_action_get_n_actions;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_description = S_virtual_atk_action_get_description;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_name = S_virtual_atk_action_get_name;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_keybinding = S_virtual_atk_action_get_keybinding;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->set_description = S_virtual_atk_action_set_description;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_localized_name = S_virtual_atk_action_get_localized_name;
}
USER_OBJECT_
S_atk_action_iface_do_action(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  gboolean ans;

  ans = object_class->do_action(object, i);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_get_n_actions(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_actions(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_get_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = object_class->get_description(object, i);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = object_class->get_name(object, i);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_get_keybinding(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = object_class->get_keybinding(object, i);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_set_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i, USER_OBJECT_ s_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));
  const gchar* desc = ((const gchar*)asCString(s_desc));

  gboolean ans;

  ans = object_class->set_description(object, i, desc);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_action_iface_get_localized_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_i)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkActionIface* object_class = ((AtkActionIface*)getPtrValue(s_object_class));
  AtkAction* object = ATK_ACTION(getPtrValue(s_object));
  gint i = ((gint)asCInteger(s_i));

  const gchar* ans;

  ans = object_class->get_localized_name(object, i);

  _result = asRString(ans);

  return(_result);
}
 

static SEXP S_AtkValue_symbol;

static void
S_virtual_atk_value_get_current_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkValue")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  GValue* value = asCGValue(VECTOR_ELT(s_ans, 0));
  *s_value = *value;
  g_free(value);
}
}

static void
S_virtual_atk_value_get_maximum_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkValue")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  GValue* value = asCGValue(VECTOR_ELT(s_ans, 0));
  *s_value = *value;
  g_free(value);
}
}

static void
S_virtual_atk_value_get_minimum_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkValue")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  GValue* value = asCGValue(VECTOR_ELT(s_ans, 0));
  *s_value = *value;
  g_free(value);
}
}

static gboolean
S_virtual_atk_value_set_current_value(AtkValue* s_object, const GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkValue")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_value_get_minimum_increment(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkValue")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  GValue* value = asCGValue(VECTOR_ELT(s_ans, 0));
  *s_value = *value;
  g_free(value);
}
}
void
S_atk_value_class_init(AtkValueIface * c, SEXP e)
{
  SEXP s;

  S_AtkValue_symbol = install("AtkValue");
  s = PROTECT(findVar(S_AtkValue_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkValueIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_current_value = S_virtual_atk_value_get_current_value;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_maximum_value = S_virtual_atk_value_get_maximum_value;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_minimum_value = S_virtual_atk_value_get_minimum_value;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_current_value = S_virtual_atk_value_set_current_value;
#if ATK_CHECK_VERSION(1, 11, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_minimum_increment = S_virtual_atk_value_get_minimum_increment;
#endif
}
USER_OBJECT_
S_atk_value_iface_get_current_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValueIface* object_class = ((AtkValueIface*)getPtrValue(s_object_class));
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  object_class->get_current_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}

USER_OBJECT_
S_atk_value_iface_get_maximum_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValueIface* object_class = ((AtkValueIface*)getPtrValue(s_object_class));
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  object_class->get_maximum_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}

USER_OBJECT_
S_atk_value_iface_get_minimum_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValueIface* object_class = ((AtkValueIface*)getPtrValue(s_object_class));
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  object_class->get_minimum_value(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}

USER_OBJECT_
S_atk_value_iface_set_current_value(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkValueIface* object_class = ((AtkValueIface*)getPtrValue(s_object_class));
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));
  const GValue* value = asCGValue(s_value);

  gboolean ans;

  ans = object_class->set_current_value(object, value);

  _result = asRLogical(ans);
    CLEANUP(g_value_unset, ((GValue*)value));
  CLEANUP(g_free, ((GValue*)value));;

  return(_result);
}

USER_OBJECT_
S_atk_value_iface_get_minimum_increment(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if ATK_CHECK_VERSION(1, 11, 0)
  AtkValueIface* object_class = ((AtkValueIface*)getPtrValue(s_object_class));
  AtkValue* object = ATK_VALUE(getPtrValue(s_object));

  GValue* value = ((GValue *)g_new0(GValue, 1));

  object_class->get_minimum_increment(object, value);


  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;
#else
  error("atk_value_get_minimum_increment exists only in Atk >= 1.11.0");
#endif

  return(_result);
}
 

static SEXP S_AtkText_symbol;

static gchar*
S_virtual_atk_text_get_text(AtkText* s_object, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static gchar*
S_virtual_atk_text_get_text_after_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static gchar*
S_virtual_atk_text_get_text_at_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static gunichar
S_virtual_atk_text_get_character_at_offset(AtkText* s_object, gint s_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gunichar)0));
  return(((gunichar)asCNumeric(s_ans)));
}

static gchar*
S_virtual_atk_text_get_text_before_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static gint
S_virtual_atk_text_get_caret_offset(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static AtkAttributeSet*
S_virtual_atk_text_get_run_attributes(AtkText* s_object, gint s_offset, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkAttributeSet*)0));
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(asCAtkAttributeSet(VECTOR_ELT(s_ans, 0)));
}

static AtkAttributeSet*
S_virtual_atk_text_get_default_attributes(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkAttributeSet*)0));
  return(asCAtkAttributeSet(s_ans));
}

static void
S_virtual_atk_text_get_character_extents(AtkText* s_object, gint s_offset, gint* s_x, gint* s_y, gint* s_width, gint* s_height, AtkCoordType s_coords)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coords, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 3)));
}

static gint
S_virtual_atk_text_get_character_count(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_text_get_offset_at_point(AtkText* s_object, gint s_x, gint s_y, AtkCoordType s_coords)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coords, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gint
S_virtual_atk_text_get_n_selections(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}

static gchar*
S_virtual_atk_text_get_selection(AtkText* s_object, gint s_selection_num, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static gboolean
S_virtual_atk_text_add_selection(AtkText* s_object, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_text_remove_selection(AtkText* s_object, gint s_selection_num)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_text_set_selection(AtkText* s_object, gint s_selection_num, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_atk_text_set_caret_offset(AtkText* s_object, gint s_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_atk_text_text_changed(AtkText* s_object, gint s_position, gint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_text_text_caret_moved(AtkText* s_object, gint s_location)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_location));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_text_text_selection_changed(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_text_text_attributes_changed(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static void
S_virtual_atk_text_get_range_extents(AtkText* s_object, gint s_start_offset, gint s_end_offset, AtkCoordType s_coord_type, AtkTextRectangle* s_rect)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
{
  AtkTextRectangle* rect = asCAtkTextRectangle(VECTOR_ELT(s_ans, 0));
  *s_rect = *rect;
  g_free(rect);
}
}

static AtkTextRange**
S_virtual_atk_text_get_bounded_ranges(AtkText* s_object, AtkTextRectangle* s_rect, AtkCoordType s_coord_type, AtkTextClipType s_x_clip_type, AtkTextClipType s_y_clip_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkText")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRAtkTextRectangle(s_rect));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_x_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_y_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((AtkTextRange**)0));
  return(((AtkTextRange**)asCArrayDup(s_ans, AtkTextRange*, asCAtkTextRange)));
}
void
S_atk_text_class_init(AtkTextIface * c, SEXP e)
{
  SEXP s;

  S_AtkText_symbol = install("AtkText");
  s = PROTECT(findVar(S_AtkText_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkTextIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_text = S_virtual_atk_text_get_text;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_text_after_offset = S_virtual_atk_text_get_text_after_offset;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_text_at_offset = S_virtual_atk_text_get_text_at_offset;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_character_at_offset = S_virtual_atk_text_get_character_at_offset;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_text_before_offset = S_virtual_atk_text_get_text_before_offset;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_caret_offset = S_virtual_atk_text_get_caret_offset;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_run_attributes = S_virtual_atk_text_get_run_attributes;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_default_attributes = S_virtual_atk_text_get_default_attributes;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->get_character_extents = S_virtual_atk_text_get_character_extents;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_character_count = S_virtual_atk_text_get_character_count;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->get_offset_at_point = S_virtual_atk_text_get_offset_at_point;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->get_n_selections = S_virtual_atk_text_get_n_selections;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->get_selection = S_virtual_atk_text_get_selection;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->add_selection = S_virtual_atk_text_add_selection;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->remove_selection = S_virtual_atk_text_remove_selection;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->set_selection = S_virtual_atk_text_set_selection;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->set_caret_offset = S_virtual_atk_text_set_caret_offset;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->text_changed = S_virtual_atk_text_text_changed;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->text_caret_moved = S_virtual_atk_text_text_caret_moved;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->text_selection_changed = S_virtual_atk_text_text_selection_changed;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->text_attributes_changed = S_virtual_atk_text_text_attributes_changed;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->get_range_extents = S_virtual_atk_text_get_range_extents;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->get_bounded_ranges = S_virtual_atk_text_get_bounded_ranges;
}
USER_OBJECT_
S_atk_text_iface_get_text(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gchar* ans;

  ans = object_class->get_text(object, start_offset, end_offset);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_text_after_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = object_class->get_text_after_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_text_at_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = object_class->get_text_at_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_character_at_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  gunichar ans;

  ans = object_class->get_character_at_offset(object, offset);

  _result = asRNumeric(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_text_before_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkTextBoundary boundary_type = ((AtkTextBoundary)asCEnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = object_class->get_text_before_offset(object, offset, boundary_type, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_caret_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_caret_offset(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_run_attributes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  AtkAttributeSet* ans;
  gint start_offset;
  gint end_offset;

  ans = object_class->get_run_attributes(object, offset, &start_offset, &end_offset);

  _result = asRAtkAttributeSet(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_default_attributes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  AtkAttributeSet* ans;

  ans = object_class->get_default_attributes(object);

  _result = asRAtkAttributeSet(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_character_extents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_coords)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));
  AtkCoordType coords = ((AtkCoordType)asCEnum(s_coords, ATK_TYPE_COORD_TYPE));

  gint x;
  gint y;
  gint width;
  gint height;

  object_class->get_character_extents(object, offset, &x, &y, &width, &height, coords);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_character_count(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_character_count(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_offset_at_point(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coords)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  AtkCoordType coords = ((AtkCoordType)asCEnum(s_coords, ATK_TYPE_COORD_TYPE));

  gint ans;

  ans = object_class->get_offset_at_point(object, x, y, coords);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_n_selections(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));

  gint ans;

  ans = object_class->get_n_selections(object);

  _result = asRInteger(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));

  gchar* ans;
  gint start_offset;
  gint end_offset;

  ans = object_class->get_selection(object, selection_num, &start_offset, &end_offset);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "start.offset", PROTECT(asRInteger(start_offset)), "end.offset", PROTECT(asRInteger(end_offset)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
  ;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_add_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = object_class->add_selection(object, start_offset, end_offset);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_remove_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));

  gboolean ans;

  ans = object_class->remove_selection(object, selection_num);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_set_selection(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint selection_num = ((gint)asCInteger(s_selection_num));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));

  gboolean ans;

  ans = object_class->set_selection(object, selection_num, start_offset, end_offset);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_set_caret_offset(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint offset = ((gint)asCInteger(s_offset));

  gboolean ans;

  ans = object_class->set_caret_offset(object, offset);

  _result = asRLogical(ans);

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_text_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint position = ((gint)asCInteger(s_position));
  gint length = ((gint)asCInteger(s_length));


  object_class->text_changed(object, position, length);


  return(_result);
}

USER_OBJECT_
S_atk_text_iface_text_caret_moved(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_location)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint location = ((gint)asCInteger(s_location));


  object_class->text_caret_moved(object, location);


  return(_result);
}

USER_OBJECT_
S_atk_text_iface_text_selection_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));


  object_class->text_selection_changed(object);


  return(_result);
}

USER_OBJECT_
S_atk_text_iface_text_attributes_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));


  object_class->text_attributes_changed(object);


  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_range_extents(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset, USER_OBJECT_ s_coord_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  gint start_offset = ((gint)asCInteger(s_start_offset));
  gint end_offset = ((gint)asCInteger(s_end_offset));
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));

  AtkTextRectangle* rect = ((AtkTextRectangle *)g_new0(AtkTextRectangle, 1));

  object_class->get_range_extents(object, start_offset, end_offset, coord_type, rect);


  _result = retByVal(PROTECT(_result), "rect", PROTECT(asRAtkTextRectangle(rect)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, rect);;

  return(_result);
}

USER_OBJECT_
S_atk_text_iface_get_bounded_ranges(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_rect, USER_OBJECT_ s_coord_type, USER_OBJECT_ s_x_clip_type, USER_OBJECT_ s_y_clip_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkTextIface* object_class = ((AtkTextIface*)getPtrValue(s_object_class));
  AtkText* object = ATK_TEXT(getPtrValue(s_object));
  AtkTextRectangle* rect = asCAtkTextRectangle(s_rect);
  AtkCoordType coord_type = ((AtkCoordType)asCEnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  AtkTextClipType x_clip_type = ((AtkTextClipType)asCEnum(s_x_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  AtkTextClipType y_clip_type = ((AtkTextClipType)asCEnum(s_y_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));

  AtkTextRange** ans;

  ans = object_class->get_bounded_ranges(object, rect, coord_type, x_clip_type, y_clip_type);

  _result = asRArray(ans, asRAtkTextRange);
    CLEANUP(atk_text_free_ranges, ans);;

  return(_result);
}
 

static SEXP S_AtkDocument_symbol;

static const gchar*
S_virtual_atk_document_get_document_type(AtkDocument* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkDocument_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkDocument")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const gchar*)0));
  return(((const gchar*)asCString(s_ans)));
}

static gpointer
S_virtual_atk_document_get_document(AtkDocument* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkDocument_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "AtkDocument")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gpointer)0));
  return(((gpointer)asCGenericData(s_ans)));
}
void
S_atk_document_class_init(AtkDocumentIface * c, SEXP e)
{
  SEXP s;

  S_AtkDocument_symbol = install("AtkDocument");
  s = PROTECT(findVar(S_AtkDocument_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkDocumentIface)) = e;

  UNPROTECT(1);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_document_type = S_virtual_atk_document_get_document_type;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_document = S_virtual_atk_document_get_document;
}
USER_OBJECT_
S_atk_document_iface_get_document_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkDocumentIface* object_class = ((AtkDocumentIface*)getPtrValue(s_object_class));
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  const gchar* ans;

  ans = object_class->get_document_type(object);

  _result = asRString(ans);

  return(_result);
}

USER_OBJECT_
S_atk_document_iface_get_document(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  AtkDocumentIface* object_class = ((AtkDocumentIface*)getPtrValue(s_object_class));
  AtkDocument* object = ATK_DOCUMENT(getPtrValue(s_object));

  gpointer ans;

  ans = object_class->get_document(object);

  _result = ans;

  return(_result);
}
 

#if ATK_CHECK_VERSION(1, 12, 1)
static SEXP S_AtkHyperlinkImpl_symbol;
void
S_atk_hyperlink_impl_class_init(AtkHyperlinkImplIface * c, SEXP e)
{
  SEXP s;

  S_AtkHyperlinkImpl_symbol = install("AtkHyperlinkImpl");
  s = PROTECT(findVar(S_AtkHyperlinkImpl_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkHyperlinkImplIface)) = e;

  UNPROTECT(1);

}
#endif 


#include "atkClasses.h"
#include "conversion.h"
#include "utils.h"
#include "RGtk2.h"

static SEXP S_AtkHyperlink_symbol;
static 
gchar*
S_virtual_atk_hyperlink_get_uri(AtkHyperlink* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkHyperlink", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gchar*)g_strdup(asCString(s_ans))));
}
static 
AtkObject*
S_virtual_atk_hyperlink_get_object(AtkHyperlink* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
gint
S_virtual_atk_hyperlink_get_end_index(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_hyperlink_get_start_index(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gboolean
S_virtual_atk_hyperlink_is_valid(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gint
S_virtual_atk_hyperlink_get_n_anchors(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
guint
S_virtual_atk_hyperlink_link_state(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((guint)asCNumeric(s_ans)));
}
static 
gboolean
S_virtual_atk_hyperlink_is_selected_link(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_hyperlink_link_activated(AtkHyperlink* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHyperlink_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHyperlink"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_hyperlink_class_init(AtkHyperlinkClass * c, SEXP e)
{
  SEXP s;

  S_AtkHyperlink_symbol = install("AtkHyperlink");
  s = findVar(S_AtkHyperlink_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkHyperlinkClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

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

static SEXP S_AtkObject_symbol;
static 
const gchar*
S_virtual_atk_object_get_name(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
const gchar*
S_virtual_atk_object_get_description(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
AtkObject*
S_virtual_atk_object_get_parent(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
gint
S_virtual_atk_object_get_n_children(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
AtkObject*
S_virtual_atk_object_ref_child(AtkObject* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkObject", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
static 
gint
S_virtual_atk_object_get_index_in_parent(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
AtkRelationSet*
S_virtual_atk_object_ref_relation_set(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkObject", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_RELATION_SET(getPtrValueWithRef(s_ans)));
}
static 
AtkRole
S_virtual_atk_object_get_role(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((AtkRole)asCEnum(s_ans, ATK_TYPE_ROLE)));
}
static 
AtkLayer
S_virtual_atk_object_get_layer(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((AtkLayer)asCEnum(s_ans, ATK_TYPE_LAYER)));
}
static 
gint
S_virtual_atk_object_get_mdi_zorder(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
AtkStateSet*
S_virtual_atk_object_ref_state_set(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkObject", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_STATE_SET(getPtrValueWithRef(s_ans)));
}
static 
void
S_virtual_atk_object_set_name(AtkObject* s_object, const gchar* s_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_set_description(AtkObject* s_object, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_set_parent(AtkObject* s_object, AtkObject* s_parent)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_parent, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_set_role(AtkObject* s_object, AtkRole s_role)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_role, ATK_TYPE_ROLE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
guint
S_virtual_atk_object_connect_property_change_handler(AtkObject* s_object, AtkPropertyChangeHandler* s_handler)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_handler, "AtkPropertyChangeHandler"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((guint)asCNumeric(s_ans)));
}
static 
void
S_virtual_atk_object_remove_property_change_handler(AtkObject* s_object, guint s_handler_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_handler_id));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_initialize(AtkObject* s_object, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_children_changed(AtkObject* s_object, guint s_change_index, AtkObject* s_changed_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_change_index));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_changed_child, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_focus_event(AtkObject* s_object, gboolean s_focus_in)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_focus_in));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_property_change(AtkObject* s_object, AtkPropertyValues* s_values)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_values, "AtkPropertyValues"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_state_change(AtkObject* s_object, const gchar* s_name, gboolean s_state_set)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_state_set));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_visible_data_changed(AtkObject* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_object_active_descendant_changed(AtkObject* s_object, AtkObject* s_child)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObject_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_child, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_object_class_init(AtkObjectClass * c, SEXP e)
{
  SEXP s;

  S_AtkObject_symbol = install("AtkObject");
  s = findVar(S_AtkObject_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkObjectClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

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
    c->connect_property_change_handler = S_virtual_atk_object_connect_property_change_handler;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->remove_property_change_handler = S_virtual_atk_object_remove_property_change_handler;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->initialize = S_virtual_atk_object_initialize;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->children_changed = S_virtual_atk_object_children_changed;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->focus_event = S_virtual_atk_object_focus_event;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->property_change = S_virtual_atk_object_property_change;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->state_change = S_virtual_atk_object_state_change;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->visible_data_changed = S_virtual_atk_object_visible_data_changed;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->active_descendant_changed = S_virtual_atk_object_active_descendant_changed;
} 

static SEXP S_AtkGObjectAccessible_symbol;
void
S_atk_gobject_accessible_class_init(AtkGObjectAccessibleClass * c, SEXP e)
{
  SEXP s;

  S_AtkGObjectAccessible_symbol = install("AtkGObjectAccessible");
  s = findVar(S_AtkGObjectAccessible_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkGObjectAccessibleClass)) = e;

  S_atk_object_class_init(((AtkObjectClass *)c), e);

} 

static SEXP S_AtkNoOpObject_symbol;
void
S_atk_no_op_object_class_init(AtkNoOpObjectClass * c, SEXP e)
{
  SEXP s;

  S_AtkNoOpObject_symbol = install("AtkNoOpObject");
  s = findVar(S_AtkNoOpObject_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkNoOpObjectClass)) = e;

  S_atk_object_class_init(((AtkObjectClass *)c), e);

} 

static SEXP S_AtkObjectFactory_symbol;
static 
void
S_virtual_atk_object_factory_invalidate(AtkObjectFactory* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkObjectFactory_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkObjectFactory"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_object_factory_class_init(AtkObjectFactoryClass * c, SEXP e)
{
  SEXP s;

  S_AtkObjectFactory_symbol = install("AtkObjectFactory");
  s = findVar(S_AtkObjectFactory_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkObjectFactoryClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->invalidate = S_virtual_atk_object_factory_invalidate;
} 

static SEXP S_AtkNoOpObjectFactory_symbol;
void
S_atk_no_op_object_factory_class_init(AtkNoOpObjectFactoryClass * c, SEXP e)
{
  SEXP s;

  S_AtkNoOpObjectFactory_symbol = install("AtkNoOpObjectFactory");
  s = findVar(S_AtkNoOpObjectFactory_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkNoOpObjectFactoryClass)) = e;

  S_atk_object_factory_class_init(((AtkObjectFactoryClass *)c), e);

} 

static SEXP S_AtkRegistry_symbol;
void
S_atk_registry_class_init(AtkRegistryClass * c, SEXP e)
{
  SEXP s;

  S_AtkRegistry_symbol = install("AtkRegistry");
  s = findVar(S_AtkRegistry_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRegistryClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_AtkRelation_symbol;
void
S_atk_relation_class_init(AtkRelationClass * c, SEXP e)
{
  SEXP s;

  S_AtkRelation_symbol = install("AtkRelation");
  s = findVar(S_AtkRelation_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRelationClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_AtkRelationSet_symbol;
void
S_atk_relation_set_class_init(AtkRelationSetClass * c, SEXP e)
{
  SEXP s;

  S_AtkRelationSet_symbol = install("AtkRelationSet");
  s = findVar(S_AtkRelationSet_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkRelationSetClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_AtkStateSet_symbol;
void
S_atk_state_set_class_init(AtkStateSetClass * c, SEXP e)
{
  SEXP s;

  S_AtkStateSet_symbol = install("AtkStateSet");
  s = findVar(S_AtkStateSet_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkStateSetClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_AtkUtil_symbol;
void
S_atk_util_class_init(AtkUtilClass * c, SEXP e)
{
  SEXP s;

  S_AtkUtil_symbol = install("AtkUtil");
  s = findVar(S_AtkUtil_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkUtilClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_AtkTable_symbol;
static 
AtkObject*
S_virtual_atk_table_ref_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkTable", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
static 
gint
S_virtual_atk_table_get_index_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_column_at_index(AtkTable* s_object, gint s_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_row_at_index(AtkTable* s_object, gint s_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_index));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_n_columns(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_n_rows(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_column_extent_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_table_get_row_extent_at(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
AtkObject*
S_virtual_atk_table_get_caption(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
const gchar*
S_virtual_atk_table_get_column_description(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
AtkObject*
S_virtual_atk_table_get_column_header(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
const gchar*
S_virtual_atk_table_get_row_description(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
AtkObject*
S_virtual_atk_table_get_row_header(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
AtkObject*
S_virtual_atk_table_get_summary(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValue(s_ans)));
}
static 
void
S_virtual_atk_table_set_caption(AtkTable* s_object, AtkObject* s_caption)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_caption, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_set_column_description(AtkTable* s_object, gint s_column, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_set_column_header(AtkTable* s_object, gint s_column, AtkObject* s_header)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_header, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_set_row_description(AtkTable* s_object, gint s_row, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_set_row_header(AtkTable* s_object, gint s_row, AtkObject* s_header)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_header, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_set_summary(AtkTable* s_object, AtkObject* s_accessible)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_accessible, "AtkObject"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
gint
S_virtual_atk_table_get_selected_columns(AtkTable* s_object, gint** s_selected)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_selected = ((gint*)asCArrayDup(VECTOR_ELT(s_ans, 1), gint, asCInteger));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}
static 
gint
S_virtual_atk_table_get_selected_rows(AtkTable* s_object, gint** s_selected)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_selected = ((gint*)asCArrayDup(VECTOR_ELT(s_ans, 1), gint, asCInteger));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}
static 
gboolean
S_virtual_atk_table_is_column_selected(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_is_row_selected(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_is_selected(AtkTable* s_object, gint s_row, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_add_row_selection(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_remove_row_selection(AtkTable* s_object, gint s_row)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_add_column_selection(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_table_remove_column_selection(AtkTable* s_object, gint s_column)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 28));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_table_row_inserted(AtkTable* s_object, gint s_row, gint s_num_inserted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 29));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_inserted));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_column_inserted(AtkTable* s_object, gint s_column, gint s_num_inserted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 30));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_inserted));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_row_deleted(AtkTable* s_object, gint s_row, gint s_num_deleted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 31));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_row));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_deleted));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_column_deleted(AtkTable* s_object, gint s_column, gint s_num_deleted)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 32));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_deleted));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_row_reordered(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 33));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_column_reordered(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 34));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_table_model_changed(AtkTable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkTable_symbol, S_GOBJECT_GET_ENV(s_object)), 35));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkTable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_table_class_init(AtkTableIface * c, SEXP e)
{
  SEXP s;

  S_AtkTable_symbol = install("AtkTable");
  s = findVar(S_AtkTable_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkTableIface)) = e;

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

static SEXP S_AtkStreamableContent_symbol;
static 
gint
S_virtual_atk_streamable_content_get_n_mime_types(AtkStreamableContent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkStreamableContent_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkStreamableContent"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
const gchar*
S_virtual_atk_streamable_content_get_mime_type(AtkStreamableContent* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkStreamableContent_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkStreamableContent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
void
S_atk_streamable_content_class_init(AtkStreamableContentIface * c, SEXP e)
{
  SEXP s;

  S_AtkStreamableContent_symbol = install("AtkStreamableContent");
  s = findVar(S_AtkStreamableContent_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkStreamableContentIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_n_mime_types = S_virtual_atk_streamable_content_get_n_mime_types;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_mime_type = S_virtual_atk_streamable_content_get_mime_type;
} 

static SEXP S_AtkSelection_symbol;
static 
gboolean
S_virtual_atk_selection_add_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_selection_clear_selection(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
AtkObject*
S_virtual_atk_selection_ref_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkSelection", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
static 
gint
S_virtual_atk_selection_get_selection_count(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gboolean
S_virtual_atk_selection_is_child_selected(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_selection_remove_selection(AtkSelection* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_selection_select_all_selection(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_selection_selection_changed(AtkSelection* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkSelection_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkSelection"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_selection_class_init(AtkSelectionIface * c, SEXP e)
{
  SEXP s;

  S_AtkSelection_symbol = install("AtkSelection");
  s = findVar(S_AtkSelection_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkSelectionIface)) = e;

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

static SEXP S_AtkImplementor_symbol;
static 
AtkObject*
S_virtual_atk_implementor_ref_accessible(AtkImplementor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImplementor_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkImplementor", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
void
S_atk_implementor_class_init(AtkImplementorIface * c, SEXP e)
{
  SEXP s;

  S_AtkImplementor_symbol = install("AtkImplementor");
  s = findVar(S_AtkImplementor_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkImplementorIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->ref_accessible = S_virtual_atk_implementor_ref_accessible;
} 

static SEXP S_AtkImage_symbol;
static 
void
S_virtual_atk_image_get_image_position(AtkImage* s_object, gint* s_x, gint* s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkImage"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
const gchar*
S_virtual_atk_image_get_image_description(AtkImage* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkImage"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
void
S_virtual_atk_image_get_image_size(AtkImage* s_object, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkImage"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
gboolean
S_virtual_atk_image_set_image_description(AtkImage* s_object, const gchar* s_description)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkImage_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkImage"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_description));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
void
S_atk_image_class_init(AtkImageIface * c, SEXP e)
{
  SEXP s;

  S_AtkImage_symbol = install("AtkImage");
  s = findVar(S_AtkImage_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkImageIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_image_position = S_virtual_atk_image_get_image_position;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_image_description = S_virtual_atk_image_get_image_description;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_image_size = S_virtual_atk_image_get_image_size;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_image_description = S_virtual_atk_image_set_image_description;
} 

static SEXP S_AtkHypertext_symbol;
static 
AtkHyperlink*
S_virtual_atk_hypertext_get_link(AtkHypertext* s_object, gint s_link_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHypertext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_link_index));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_HYPERLINK(getPtrValue(s_ans)));
}
static 
gint
S_virtual_atk_hypertext_get_n_links(AtkHypertext* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHypertext"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_hypertext_get_link_index(AtkHypertext* s_object, gint s_char_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHypertext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_char_index));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
void
S_virtual_atk_hypertext_link_selected(AtkHypertext* s_object, gint s_link_index)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkHypertext_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkHypertext"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_link_index));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_hypertext_class_init(AtkHypertextIface * c, SEXP e)
{
  SEXP s;

  S_AtkHypertext_symbol = install("AtkHypertext");
  s = findVar(S_AtkHypertext_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkHypertextIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_link = S_virtual_atk_hypertext_get_link;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_n_links = S_virtual_atk_hypertext_get_n_links;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_link_index = S_virtual_atk_hypertext_get_link_index;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->link_selected = S_virtual_atk_hypertext_link_selected;
} 

static SEXP S_AtkEditableText_symbol;
static 
gboolean
S_virtual_atk_editable_text_set_run_attributes(AtkEditableText* s_object, AtkAttributeSet* s_attrib_set, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRAtkAttributeSet(s_attrib_set));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_editable_text_set_text_contents(AtkEditableText* s_object, const gchar* s_string)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_editable_text_insert_text(AtkEditableText* s_object, const gchar* s_string, gint s_length, gint* s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRIntegerArrayWithSize(s_position, s_length));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_editable_text_copy_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_editable_text_cut_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_editable_text_delete_text(AtkEditableText* s_object, gint s_start_pos, gint s_end_pos)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_pos));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_pos));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_editable_text_paste_text(AtkEditableText* s_object, gint s_position)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkEditableText_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkEditableText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_editable_text_class_init(AtkEditableTextIface * c, SEXP e)
{
  SEXP s;

  S_AtkEditableText_symbol = install("AtkEditableText");
  s = findVar(S_AtkEditableText_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkEditableTextIface)) = e;

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

static SEXP S_AtkComponent_symbol;
static 
guint
S_virtual_atk_component_add_focus_handler(AtkComponent* s_object, AtkFocusHandler s_handler)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_handler, "AtkFocusHandler"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((guint)asCNumeric(s_ans)));
}
static 
gboolean
S_virtual_atk_component_contains(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
AtkObject*
S_virtual_atk_component_ref_accessible_at_point(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkComponent", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(ATK_OBJECT(getPtrValueWithRef(s_ans)));
}
static 
void
S_virtual_atk_component_get_extents(AtkComponent* s_object, gint* s_x, gint* s_y, gint* s_width, gint* s_height, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 3)));
}
static 
void
S_virtual_atk_component_get_position(AtkComponent* s_object, gint* s_x, gint* s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
void
S_virtual_atk_component_get_size(AtkComponent* s_object, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
gboolean
S_virtual_atk_component_grab_focus(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_component_remove_focus_handler(AtkComponent* s_object, guint s_handler_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_handler_id));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
gboolean
S_virtual_atk_component_set_extents(AtkComponent* s_object, gint s_x, gint s_y, gint s_width, gint s_height, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
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

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_component_set_position(AtkComponent* s_object, gint s_x, gint s_y, AtkCoordType s_coord_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_component_set_size(AtkComponent* s_object, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
AtkLayer
S_virtual_atk_component_get_layer(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((AtkLayer)asCEnum(s_ans, ATK_TYPE_LAYER)));
}
static 
gint
S_virtual_atk_component_get_mdi_zorder(AtkComponent* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
void
S_virtual_atk_component_bounds_changed(AtkComponent* s_object, AtkRectangle* s_bounds)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkComponent_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkComponent"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_bounds, "AtkRectangle"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_atk_component_class_init(AtkComponentIface * c, SEXP e)
{
  SEXP s;

  S_AtkComponent_symbol = install("AtkComponent");
  s = findVar(S_AtkComponent_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkComponentIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->add_focus_handler = S_virtual_atk_component_add_focus_handler;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->contains = S_virtual_atk_component_contains;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->ref_accessible_at_point = S_virtual_atk_component_ref_accessible_at_point;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_extents = S_virtual_atk_component_get_extents;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_position = S_virtual_atk_component_get_position;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_size = S_virtual_atk_component_get_size;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->grab_focus = S_virtual_atk_component_grab_focus;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->remove_focus_handler = S_virtual_atk_component_remove_focus_handler;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->set_extents = S_virtual_atk_component_set_extents;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->set_position = S_virtual_atk_component_set_position;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->set_size = S_virtual_atk_component_set_size;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->get_layer = S_virtual_atk_component_get_layer;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->get_mdi_zorder = S_virtual_atk_component_get_mdi_zorder;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->bounds_changed = S_virtual_atk_component_bounds_changed;
} 

static SEXP S_AtkAction_symbol;
static 
gboolean
S_virtual_atk_action_do_action(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gint
S_virtual_atk_action_get_n_actions(AtkAction* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
const gchar*
S_virtual_atk_action_get_description(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
const gchar*
S_virtual_atk_action_get_name(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
const gchar*
S_virtual_atk_action_get_keybinding(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
gboolean
S_virtual_atk_action_set_description(AtkAction* s_object, gint s_i, const gchar* s_desc)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_desc));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
const gchar*
S_virtual_atk_action_get_localized_name(AtkAction* s_object, gint s_i)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkAction_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkAction"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_i));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
void
S_atk_action_class_init(AtkActionIface * c, SEXP e)
{
  SEXP s;

  S_AtkAction_symbol = install("AtkAction");
  s = findVar(S_AtkAction_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkActionIface)) = e;

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

static SEXP S_AtkValue_symbol;
static 
void
S_virtual_atk_value_get_current_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkValue"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_value_get_maximum_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkValue"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_value_get_minimum_value(AtkValue* s_object, GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkValue"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
gboolean
S_virtual_atk_value_set_current_value(AtkValue* s_object, const GValue* s_value)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkValue_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkValue"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
void
S_atk_value_class_init(AtkValueIface * c, SEXP e)
{
  SEXP s;

  S_AtkValue_symbol = install("AtkValue");
  s = findVar(S_AtkValue_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkValueIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_current_value = S_virtual_atk_value_get_current_value;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_maximum_value = S_virtual_atk_value_get_maximum_value;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_minimum_value = S_virtual_atk_value_get_minimum_value;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->set_current_value = S_virtual_atk_value_set_current_value;
} 

static SEXP S_AtkText_symbol;
static 
gchar*
S_virtual_atk_text_get_text(AtkText* s_object, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gchar*)g_strdup(asCString(s_ans))));
}
static 
gchar*
S_virtual_atk_text_get_text_after_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}
static 
gchar*
S_virtual_atk_text_get_text_at_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}
static 
gunichar
S_virtual_atk_text_get_character_at_offset(AtkText* s_object, gint s_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gunichar)asCNumeric(s_ans)));
}
static 
gchar*
S_virtual_atk_text_get_text_before_offset(AtkText* s_object, gint s_offset, AtkTextBoundary s_boundary_type, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_boundary_type, ATK_TYPE_TEXT_BOUNDARY));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}
static 
gint
S_virtual_atk_text_get_caret_offset(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
AtkAttributeSet*
S_virtual_atk_text_get_run_attributes(AtkText* s_object, gint s_offset, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(asCAtkAttributeSet(VECTOR_ELT(s_ans, 0)));
}
static 
AtkAttributeSet*
S_virtual_atk_text_get_default_attributes(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(asCAtkAttributeSet(s_ans));
}
static 
void
S_virtual_atk_text_get_character_extents(AtkText* s_object, gint s_offset, gint* s_x, gint* s_y, gint* s_width, gint* s_height, AtkCoordType s_coords)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coords, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 3)));
}
static 
gint
S_virtual_atk_text_get_character_count(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_text_get_offset_at_point(AtkText* s_object, gint s_x, gint s_y, AtkCoordType s_coords)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coords, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gint
S_virtual_atk_text_get_n_selections(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
gchar*
S_virtual_atk_text_get_selection(AtkText* s_object, gint s_selection_num, gint* s_start_offset, gint* s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_start_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_end_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}
static 
gboolean
S_virtual_atk_text_add_selection(AtkText* s_object, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_text_remove_selection(AtkText* s_object, gint s_selection_num)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_text_set_selection(AtkText* s_object, gint s_selection_num, gint s_start_offset, gint s_end_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_selection_num));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_atk_text_set_caret_offset(AtkText* s_object, gint s_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_offset));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
void
S_virtual_atk_text_text_changed(AtkText* s_object, gint s_position, gint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_position));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_length));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_text_text_caret_moved(AtkText* s_object, gint s_location)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_location));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_text_text_selection_changed(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_text_text_attributes_changed(AtkText* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_atk_text_get_range_extents(AtkText* s_object, gint s_start_offset, gint s_end_offset, AtkCoordType s_coord_type, AtkTextRectangle* s_rect)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkText"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_start_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_end_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_rect = *asCAtkTextRectangle(VECTOR_ELT(s_ans, 0));
}
static 
AtkTextRange**
S_virtual_atk_text_get_bounded_ranges(AtkText* s_object, AtkTextRectangle* s_rect, AtkCoordType s_coord_type, AtkTextClipType s_x_clip_type, AtkTextClipType s_y_clip_type)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkText_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "AtkText", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRAtkTextRectangle(s_rect));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_coord_type, ATK_TYPE_COORD_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_x_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_y_clip_type, ATK_TYPE_TEXT_CLIP_TYPE));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((AtkTextRange**)asCArrayDup(s_ans, AtkTextRange*, asCAtkTextRange)));
}
void
S_atk_text_class_init(AtkTextIface * c, SEXP e)
{
  SEXP s;

  S_AtkText_symbol = install("AtkText");
  s = findVar(S_AtkText_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkTextIface)) = e;

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

static SEXP S_AtkDocument_symbol;
static 
const gchar*
S_virtual_atk_document_get_document_type(AtkDocument* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkDocument_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkDocument"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
gpointer
S_virtual_atk_document_get_document(AtkDocument* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_AtkDocument_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "AtkDocument"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gpointer)asCGenericData(s_ans)));
}
void
S_atk_document_class_init(AtkDocumentIface * c, SEXP e)
{
  SEXP s;

  S_AtkDocument_symbol = install("AtkDocument");
  s = findVar(S_AtkDocument_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(AtkDocumentIface)) = e;

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_document_type = S_virtual_atk_document_get_document_type;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_document = S_virtual_atk_document_get_document;
} 


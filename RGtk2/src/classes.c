#include "RGtk2.h"
#include "conversion.h"
#include "utils.h"

static USER_OBJECT_ S_GObject_symbol;
static USER_OBJECT_ _S_PropertyEnv_symbol;

static
void
S_virtual_gobject_set_property(GObject *object, guint id, const GValue *value, GParamSpec *pspec)
{
  USER_OBJECT_ s_fun;
  USER_OBJECT_ s_env = S_GOBJECT_GET_ENV(object);
  
  s_fun = VECTOR_ELT(findVar(S_GObject_symbol, s_env), 0);
  if (s_fun == NULL_USER_OBJECT) {
    USER_OBJECT_ s_prop_env = findVar(_S_PropertyEnv_symbol, s_env);
    defineVar(install(pspec->name), asRGValue(value), s_prop_env);
  } else {
    USER_OBJECT_ e;
    USER_OBJECT_ tmp;
  
    PROTECT(e = allocVector(LANGSXP, 5));
    tmp = e;

    SETCAR(tmp, s_fun);
    tmp = CDR(tmp);
  
    SETCAR(tmp, toRPointerWithRef(object, "GObject"));
    tmp = CDR(tmp);
    SETCAR(tmp, asRInteger(id));
    tmp = CDR(tmp);
    SETCAR(tmp, asRGValue(value));
    tmp = CDR(tmp);
    SETCAR(tmp, asRGParamSpec(pspec));
    tmp = CDR(tmp);
  
    eval(e, R_GlobalEnv);
    
    UNPROTECT(1);
  }
}

static
void
S_virtual_gobject_get_property(GObject *object, guint id, GValue *value, GParamSpec *pspec)
{
  USER_OBJECT_ s_ans;
  USER_OBJECT_ s_fun;
  USER_OBJECT_ s_env = S_GOBJECT_GET_ENV(object);
  
  s_fun = VECTOR_ELT(findVar(S_GObject_symbol, s_env), 1);
  if (s_fun == NULL_USER_OBJECT) {
    USER_OBJECT_ s_prop_env = findVar(_S_PropertyEnv_symbol, s_env);
    s_ans = findVar(install(pspec->name), s_prop_env);
    if (s_ans == R_UnboundValue) {
      g_param_value_set_default(pspec, value);
      return;
    }
  } else {
    USER_OBJECT_ e;
    USER_OBJECT_ tmp;
  
    PROTECT(e = allocVector(LANGSXP, 4));
    tmp = e;

    SETCAR(tmp, s_fun);
    tmp = CDR(tmp);
  
    SETCAR(tmp, toRPointerWithRef(object, "GObject"));
    tmp = CDR(tmp);
    SETCAR(tmp, asRInteger(id));
    tmp = CDR(tmp);
    SETCAR(tmp, asRGParamSpec(pspec));
    tmp = CDR(tmp);
  
    s_ans = eval(e, R_GlobalEnv);
    
    UNPROTECT(1);
  }
  
  R_setGValueFromSValue(value, s_ans);
}

/* It's not clear whether we want to override the 'constructor' method. In a way,
   it is similar to the S4 initialize function, in that it provides the initial
   properties. However, unlike S4, the setting of properties can be overridden
   in a more centralized way in GObject with the 'set_property' method. 
   Most people override 'constructor' to implement singletons, but that is
   a foreign concept to R. */ 
/*static
GObject *
S_virtual_gobject_constructor(GType type, guint n_properties, GObjectConstructParam *properties)
{
  USER_OBJECT_ s_ans;
  USER_OBJECT_ s_fun;
  
  s_fun = VECTOR_ELT(findVar(S_GObject_symbol, S_GOBJECT_GET_ENV(object)), 2);
  
}*/

static USER_OBJECT_ _S_InstanceInit_symbol;

void
S_gobject_class_init(GObjectClass *c, USER_OBJECT_ e)
{
  USER_OBJECT_ s, signals, props;
  
  S_GObject_symbol = install("GObject");
  _S_PropertyEnv_symbol = install(".props");
  _S_InstanceInit_symbol = install(".initialize");
  
  G_STRUCT_MEMBER(SEXP, c, sizeof(GObjectClass)) = e;

  c->set_property = S_virtual_gobject_set_property;
  c->get_property = S_virtual_gobject_get_property;
  /*if (VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->constructor = S_virtual_gobject_constructor;*/
}

static
void
S_gobject_instance_init(GObject *object, GObjectClass *class)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_fun = findVar(_S_InstanceInit_symbol, S_GOBJECT_GET_ENV(object));

  if (s_fun == NULL_USER_OBJECT)
    return;
  
  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, s_fun);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(object, "GObject"));
  
  eval(e, R_GlobalEnv);
  
  UNPROTECT(1);
}

USER_OBJECT_
S_gobject_class_new(USER_OBJECT_ s_name, USER_OBJECT_ s_parent, USER_OBJECT_ s_interfaces, 
  USER_OBJECT_ s_class_init_sym, USER_OBJECT_ s_interface_init_syms, USER_OBJECT_ s_def,
  USER_OBJECT_ s_props, USER_OBJECT_ s_signals)
{
  GTypeQuery query;
  GTypeInfo type_info = {0, };
  GInterfaceInfo interface_info = {0, };
  GType new_type, parent_type = g_type_from_name(asCString(s_parent));
  GObjectClass *c;
  gint i;
  
  R_PreserveObject(s_def);
  
  g_type_query(parent_type, &query);
  
  /* create type */
  
  type_info.class_size = query.class_size + sizeof(SEXP);
  type_info.class_init = getPtrValue(s_class_init_sym);
  type_info.class_data = s_def;
  type_info.instance_size = query.instance_size;
  type_info.instance_init = (GInstanceInitFunc)S_gobject_instance_init;
  
  new_type = g_type_register_static(parent_type, asCString(s_name), &type_info, 0);
  
  /* add interfaces */
  
  interface_info.interface_data = s_def;
  for (i = 0; i < GET_LENGTH(s_interfaces); i++) {
    interface_info.interface_init = getPtrValue(VECTOR_ELT(s_interface_init_syms, i));
    g_type_add_interface_static(new_type, 
      g_type_from_name(asCString(STRING_ELT(s_interfaces, i))), &interface_info);
  }
  
  /* install properties */
  /* FIXME: move this to the class_init function so that we lazily create the class? */
  c = g_type_class_ref(new_type);
  g_debug("Installing props");
  for (i = 0; i < GET_LENGTH(s_props); i++)
    g_object_class_install_property(c, i+1, asCGParamSpec(VECTOR_ELT(s_props, i)));
  g_type_class_unref(c);
  g_debug("Finished");
  
  /* install signals */
  for (i = 0; i < GET_LENGTH(s_signals); i++) {
    USER_OBJECT_ s_signal = VECTOR_ELT(s_signals, i);
    g_signal_newv(asCString(VECTOR_ELT(s_signal, 0)), /* name */
      new_type, /* type */
      asCNumeric(VECTOR_ELT(s_signal, 1)), /* signal flags */
      NULL, /* class offset */
      NULL, /* accumulator */
      NULL, /* accumulator data */
      NULL, /* C marshaller, all we need is R marshaller */
      asCNumeric(VECTOR_ELT(s_signal, 2)), /* return type */
      GET_LENGTH(VECTOR_ELT(s_signal, 3)), /* number of parameters */
      asCArray(VECTOR_ELT(s_signal, 3), GType, asCNumeric)); /* parameter types */
  }

  return asRGType(new_type);
}
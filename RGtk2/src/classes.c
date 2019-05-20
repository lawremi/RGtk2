#include "RGtk2/gobject.h"

static USER_OBJECT_ S_GObject_symbol;

static
void
S_virtual_gobject_finalize(GObject *object)
{
  USER_OBJECT_ s_env = S_GOBJECT_GET_ENV(object);
  if (VECTOR_ELT(findVar(S_GObject_symbol, s_env), 1) == NULL_USER_OBJECT) {
    USER_OBJECT_ s_instance_env = S_G_OBJECT_GET_INSTANCE_ENV(object);
    R_ReleaseObject(s_instance_env);
  }
}

static
void
S_virtual_gobject_set_property(GObject *object, guint id, const GValue *value, GParamSpec *pspec)
{
  USER_OBJECT_ s_fun;
  USER_OBJECT_ s_env = S_GOBJECT_GET_ENV(object);
  
  s_fun = VECTOR_ELT(findVar(S_GObject_symbol, s_env), 0);
  /* If the user does not override set_property, we store automatically
  */
  if (s_fun == NULL_USER_OBJECT) {
    USER_OBJECT_ s_prop_env = S_G_OBJECT_GET_INSTANCE_ENV(object);
    defineVar(install(pspec->name), PROTECT(asRGValue(value)), s_prop_env);
    UNPROTECT(1);
  } else {
    USER_OBJECT_ e;
    USER_OBJECT_ tmp;
  
    PROTECT(e = allocVector(LANGSXP, 5));
    tmp = e;

    SETCAR(tmp, s_fun);
    tmp = CDR(tmp);
  
    SETCAR(tmp, S_G_OBJECT_ADD_ENV(object, toRPointerWithRef(object, "GObject")));
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
  /* If the user does not override get_property, we retrieve automatically
  */
  if (s_fun == NULL_USER_OBJECT) {
    USER_OBJECT_ s_prop_env = S_G_OBJECT_GET_INSTANCE_ENV(object);
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
  
    SETCAR(tmp, S_G_OBJECT_ADD_ENV(object, toRPointerWithRef(object, "GObject")));
    tmp = CDR(tmp);
    SETCAR(tmp, asRInteger(id));
    tmp = CDR(tmp);
    SETCAR(tmp, asRGParamSpec(pspec));
    tmp = CDR(tmp);
  
    s_ans = eval(e, R_GlobalEnv);
    
    UNPROTECT(1);
  }
  
  R_setGValueFromSValue(value, PROTECT(s_ans));
  UNPROTECT(1);
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

static USER_OBJECT_ _S_InstanceInit_symbol = NULL;
static USER_OBJECT_ _S_InstanceEnv_fun;

void
S_gobject_class_init(GObjectClass *c, USER_OBJECT_ e)
{
  GTypeQuery query;
  USER_OBJECT_ s_props, s_prop_overrides;
  gint i, j;
  
  S_GObject_symbol = install("GObject");
  
  g_type_query(G_OBJECT_CLASS_TYPE(c), &query);
  G_STRUCT_MEMBER(SEXP, c, query.class_size - sizeof(SEXP)) = e;

  c->set_property = S_virtual_gobject_set_property;
  c->get_property = S_virtual_gobject_get_property;
  c->finalize = S_virtual_gobject_finalize;
  
  s_props = PROTECT(findVar(install(".props"), e));
  /* initialize properties */
  for (i = 0; i < GET_LENGTH(s_props); i++) {
    GParamSpec *pspec = asCGParamSpec(VECTOR_ELT(s_props, i));
    g_object_class_install_property(c, i+1, pspec);
  }
  s_prop_overrides = PROTECT(findVar(install(".prop_overrides"), e));
  for (j = 0; j < GET_LENGTH(s_prop_overrides); j++)
    g_object_class_override_property(c, i+1, 
      asCString(STRING_ELT(s_prop_overrides, j)));

  UNPROTECT(2);
  /*if (VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->constructor = S_virtual_gobject_constructor;*/
}

static
void
S_gobject_instance_init(GObject *object, GObjectClass *class)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_env = S_GOBJECT_GET_ENV(object);
  USER_OBJECT_ s_fun = PROTECT(findVar(_S_InstanceInit_symbol, s_env));
  USER_OBJECT_ instance_env, envs;
  guint size = 0;
  gint i;
  GTypeQuery query;
  GType type = G_OBJECT_TYPE(object);
  GObject *tmp_object = object;
  /* create instance environment */
  /* we need to get the environment out of every SGObject ancestor class */
  while(g_type_is_a(type, S_TYPE_G_OBJECT)) {
    size++;
    type = g_type_parent(type);
  }
  envs = NEW_LIST(size);
  for (i = size-1; i >= 0; i--) {
    SET_VECTOR_ELT(envs, i, S_GOBJECT_GET_ENV(tmp_object));
    tmp_object -= sizeof(USER_OBJECT_);
  }
  /* and send those to be cloned in R */
  PROTECT(tmp = lang2(_S_InstanceEnv_fun, envs));
  PROTECT(instance_env = eval(tmp, R_GlobalEnv));
  R_PreserveObject(instance_env);
  g_type_query(G_OBJECT_TYPE(object), &query);
  G_STRUCT_MEMBER(SEXP, object, query.instance_size - sizeof(SEXP)) = instance_env;
  UNPROTECT(2);
  
  /* run user function if it exists */
  
  if (s_fun == NULL_USER_OBJECT) {
    UNPROTECT(1);
    return;
  }
  
  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, s_fun);
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(object, toRPointerWithRef(object, "GObject")));
  
  eval(e, R_GlobalEnv);
  
  UNPROTECT(2);
}

/* clone a pointer to the SGObject and add parent envs */
USER_OBJECT_
S_g_object_parent(USER_OBJECT_ s_obj)
{
  GObject *obj = getPtrValue(s_obj);
  USER_OBJECT_ parent = toRPointerWithRef(obj, "GObject");
  USER_OBJECT_ public_env, private_env;
  
  if (!g_type_is_a(g_type_parent(G_OBJECT_TYPE(obj)), S_TYPE_G_OBJECT))
    return NULL_USER_OBJECT;

  PROTECT(parent);
  public_env = PROTECT(findVar(install(".public"), S_GOBJECT_GET_ENV(obj)));
  private_env = S_G_OBJECT_GET_INSTANCE_ENV(s_obj);
  
  setAttrib(parent, install(".public"), ENCLOS(public_env));
  setAttrib(parent, install(".private"), ENCLOS(private_env));

  UNPROTECT(2);
  return parent;
}

/* clone a pointer to the SGObject and add private env */
USER_OBJECT_
S_g_object_private(USER_OBJECT_ s_obj)
{
  USER_OBJECT_ private = toRPointerWithRef(getPtrValue(s_obj), "GObject");
  USER_OBJECT_ private_env = S_G_OBJECT_GET_INSTANCE_ENV(getPtrValue(s_obj));

  PROTECT(private);
  setAttrib(private, install(".private"), private_env);
  
  UNPROTECT(1);
  return private;
}

/* so that R can get the public environment out for a named type, allowing it
   to establish the parent of a new public env without later cloning */
USER_OBJECT_
S_g_object_type_get_public_env(USER_OBJECT_ s_type_name)
{
  GType type = g_type_from_name(asCString(s_type_name));
  GObjectClass *c = g_type_class_peek(type);
  GTypeQuery query;
  g_type_query(type, &query);
  return G_STRUCT_MEMBER(USER_OBJECT_, c, query.class_size - sizeof(USER_OBJECT_));
}

static USER_OBJECT_
S_g_object_get_environment(SGObject *obj)
{
  return S_G_OBJECT_GET_INSTANCE_ENV(obj);
}

static void S_g_object_init(SGObjectIface *iface, gpointer data)
{
  iface->get_environment = S_g_object_get_environment;
}

USER_OBJECT_
S_gobject_class_new(USER_OBJECT_ s_name, USER_OBJECT_ s_parent, USER_OBJECT_ s_interfaces, 
  USER_OBJECT_ s_class_init_sym, USER_OBJECT_ s_interface_init_syms, USER_OBJECT_ s_def,
  USER_OBJECT_ s_signals, USER_OBJECT_ s_abstract)
{
  GTypeQuery query;
  GTypeInfo type_info = {0, };
  GInterfaceInfo interface_info = {0, };
  GType new_type, parent_type = g_type_from_name(asCString(s_parent));
  gint i;
  gboolean abstract = asCLogical(s_abstract);
  
  if (!_S_InstanceInit_symbol) { /* initialize globals */
    _S_InstanceInit_symbol = install(".initialize");
    _S_InstanceEnv_fun = findFun(install(".instanceEnv"), 
				 PROTECT(R_FindNamespace(asRString("RGtk2"))));
    UNPROTECT(1);
  }
    
  R_PreserveObject(s_def);
  
  g_type_query(parent_type, &query);
  
  /* create type */
  
  type_info.class_size = query.class_size + sizeof(SEXP);
  type_info.class_init = (GClassInitFunc)getPtrValueFn(s_class_init_sym);
  type_info.class_data = s_def;
  type_info.instance_size = query.instance_size + sizeof(SEXP);
  type_info.instance_init = (GInstanceInitFunc)S_gobject_instance_init;
  
  new_type = g_type_register_static(parent_type, asCString(s_name), &type_info,
    abstract ? G_TYPE_FLAG_ABSTRACT : 0);
  
  /* add interfaces */
  
  interface_info.interface_data = s_def;
  for (i = 0; i < GET_LENGTH(s_interfaces); i++) {
    interface_info.interface_init = 
      (GInterfaceInitFunc)getPtrValueFn(VECTOR_ELT(s_interface_init_syms, i));
    g_type_add_interface_static(new_type, 
      g_type_from_name(asCString(STRING_ELT(s_interfaces, i))), &interface_info);
  }
  
  interface_info.interface_init = (GInterfaceInitFunc)S_g_object_init;
  g_type_add_interface_static(new_type, S_TYPE_G_OBJECT, &interface_info);
  
  /* install signals */
  for (i = 0; i < GET_LENGTH(s_signals); i++) {
    USER_OBJECT_ s_signal = VECTOR_ELT(s_signals, i);
    g_signal_newv(asCString(VECTOR_ELT(s_signal, 0)), /* name */
      new_type, /* type */
      asCNumeric(VECTOR_ELT(s_signal, 3)), /* signal flags */
      NULL, /* class offset */
      NULL, /* accumulator */
      NULL, /* accumulator data */
      NULL, /* C marshaller, all we need is R marshaller */
      asCNumeric(VECTOR_ELT(s_signal, 2)), /* return type */
      GET_LENGTH(VECTOR_ELT(s_signal, 1)), /* number of parameters */
      asCArray(VECTOR_ELT(s_signal, 1), GType, asCNumeric)); /* parameter types */
  }

  return asRGType(new_type);
}

/* SGObject interface, for getting the instance environment out */
GType
s_g_object_get_type(void)
{
  static GType object_type = 0;
  if (!object_type) {
    GTypeInfo info = {
      sizeof(SGObjectIface),
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      0,
      0,
      NULL,
      NULL
    };
    object_type = g_type_register_static(G_TYPE_INTERFACE, "SGObject", &info, 0);
  }
  return object_type;
}

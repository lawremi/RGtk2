#include "gobject.h"
#include "conversion.h"
#include "glib.h"

/* GType */

USER_OBJECT_
R_internal_getGTypeHierarchy(GType type)
{
  USER_OBJECT_ ans;
  int n = 0;
  GType orig = type;

  while(type != 0 && type != G_TYPE_INVALID) {
     type = g_type_parent(type);
     n++;
  }

  PROTECT(ans = NEW_CHARACTER(n));
  n = 0;
  type = orig;
  while(type != G_TYPE_INVALID) {
     const char *val;
     val = g_type_name(type);
     SET_STRING_ELT(ans, n, COPY_TO_USER_STRING(val));
     n++;
     type =  g_type_parent(type);
  }
  UNPROTECT(1);

  return(ans);
}

/**
 Gets a character vector giving the names of the types
 of the object and its ancestor types, in young-to-old
 order.

   .Call("R_getObjectTypeHierarchy", gtkWindow())
 gives
  [1] "GtkWindow"    "GtkBin"       "GtkContainer" "GtkWidget"    "GtkObject"

  (in my setup).

 */
USER_OBJECT_
R_getGObjectTypeHierarchy(USER_OBJECT_ sobj)
{
  GType type;
  GObject *obj;


  obj = G_OBJECT(getPtrValue(sobj));
  if(!G_IS_OBJECT(obj)) {
   PROBLEM "Non-GObject passed to getObjectTypeHierarchy"
   ERROR;
  }
  type = G_OBJECT_TYPE(obj);

  return(R_internal_getGTypeHierarchy(type));
}

USER_OBJECT_
R_getGTypeHierarchy(USER_OBJECT_ sobj)
{
  GType type;
  type = (GType) NUMERIC_POINTER(sobj)[0];

  return(R_internal_getGTypeHierarchy(type));
}

USER_OBJECT_
R_getGTypeClass(USER_OBJECT_ sobj)
{
  GType type;
  type = (GType) NUMERIC_POINTER(sobj)[0];

  return(toRPointerWithFinalizer(g_type_class_ref(type), "GTypeClass", 
  	(RPointerFinalizer)g_type_class_unref));
}

/**
 Gets the name of the type of the object.
 */
USER_OBJECT_
R_gObjectTypeName(USER_OBJECT_ sobj)
{
    USER_OBJECT_ ans;

    GObject *obj;
    GType type;
    const gchar *val;

    obj = G_OBJECT(getPtrValue(sobj));
    type = G_OBJECT_TYPE(obj);
    val = g_type_name(type);
    PROTECT(ans = NEW_CHARACTER(1));
    SET_STRING_ELT(ans, 0, COPY_TO_USER_STRING(val));
    UNPROTECT(1);

    return(ans);
}

USER_OBJECT_
R_gTypeFromName(USER_OBJECT_ name)
{
    char *val;
    GType type;
    val = CHAR_DEREF(STRING_ELT(name, 0));
    type = g_type_from_name(val);

    if( type == G_TYPE_INVALID) {
      PROBLEM "No type for %s", val
      ERROR;
    }

    return(asRGType(type));
}

USER_OBJECT_
R_gObjectType(USER_OBJECT_ sobj)
{
    USER_OBJECT_ ans;

    GObject *obj;
    GType type;

    obj = G_OBJECT(getPtrValue(sobj));
    type = G_OBJECT_TYPE(obj);

    ans = asRGType(type);
    return(ans);
}

USER_OBJECT_
asRGType(GType type)
{
    USER_OBJECT_ ans;
    const gchar *name;

    PROTECT(ans = NEW_NUMERIC(1));
    NUMERIC_DATA(ans)[0] = type;

    name = g_type_name(type);

    if(!name) {
      PROBLEM "object has no G type"
      ERROR;
    }

    SET_NAMES(ans, asRString(name));
    SET_CLASS(ans, asRString("GType"));
    UNPROTECT(1);

    return(ans);
}

USER_OBJECT_
R_getInterfaces(USER_OBJECT_ s_type)
{
    GType type;
    type = (GType) NUMERIC_POINTER(s_type)[0];

    return(R_internal_getInterfaces(type));
}
USER_OBJECT_
R_internal_getInterfaces(GType type)
{
    SEXP list;
    GType *interfaces;
    int i;
	guint n;

    interfaces = g_type_interfaces(type, &n);
    PROTECT(list = NEW_CHARACTER(n));
    for(i = 0; i < n; i++)
        SET_STRING_ELT(list, i, COPY_TO_USER_STRING(g_type_name(interfaces[i])));

    g_free(interfaces);

    UNPROTECT(1);

    return(list);
}

/* GObject properties */

USER_OBJECT_
R_getGTypeParamSpecs(USER_OBJECT_ sobj, USER_OBJECT_ parent)
{
    GType type, objectType;
    int n, i;
    USER_OBJECT_ ans;

    type = objectType = (GType) NUMERIC_POINTER(sobj)[0];

    if(LOGICAL_DATA(parent)[0] == FALSE) {
        gpointer class = g_type_class_ref(type);
        ans = R_internal_getClassParamSpecs(G_OBJECT_CLASS(class));
        g_type_class_unref(class);
        return(ans);
    }

    n = 0;
    while(type != G_TYPE_INVALID) {
    type = g_type_parent(type);
        n++;
    }

    PROTECT(ans = NEW_LIST(n));
    type = objectType;
    i = 0;
    do {
        gpointer class = g_type_class_ref(type);
        SET_VECTOR_ELT(ans, i++, R_internal_getClassParamSpecs(G_OBJECT_CLASS(class)));
        g_type_class_unref(class);
    } while((type = g_type_parent(type)) != G_TYPE_INVALID);

    SET_NAMES(ans, R_internal_getGTypeHierarchy(objectType));
    UNPROTECT(1);

    return(ans);
}

USER_OBJECT_
R_internal_getClassParamSpecs(GObjectClass *class)
{
    USER_OBJECT_ ans, names, argNames, tmp;
    int i;
	guint num;
    GParamSpec **specs;

    specs = g_object_class_list_properties(class, &num);

    PROTECT(argNames = NEW_CHARACTER(2));
    SET_STRING_ELT(argNames, 0, COPY_TO_USER_STRING("type"));
    SET_STRING_ELT(argNames, 1, COPY_TO_USER_STRING("flag"));
    PROTECT(ans = NEW_LIST(num));
    PROTECT(names = NEW_CHARACTER(num));
    for(i = 0; i < num; i++) {
        PROTECT(tmp = NEW_LIST(2));
        SET_VECTOR_ELT(tmp, 0, asRGType(G_PARAM_SPEC_VALUE_TYPE(specs[i])));
        SET_VECTOR_ELT(tmp, 1, R_createFlag(specs[i]->flags, "GParamFlags"));
        SET_NAMES(tmp, argNames);
        SET_VECTOR_ELT(ans, i, tmp);
        UNPROTECT(1);
        SET_STRING_ELT(names, i, COPY_TO_USER_STRING(g_param_spec_get_name(specs[i])));
		g_param_spec_sink(specs[i]);
    }

    SET_NAMES(ans, names);
    UNPROTECT(3);
    return(ans);
}

USER_OBJECT_
R_setGValueForProperty(GValue *value, GObjectClass *class, const gchar *property_name, USER_OBJECT_ s_value)
{
	GParamSpec *spec = g_object_class_find_property(class, property_name);
	
	if (!spec) {
		PROBLEM "Invalid property %s!\n", property_name
		ERROR;
    }
    g_value_init(value, G_PARAM_SPEC_VALUE_TYPE(spec));
    R_setGValueFromSValue(value, s_value);
	
	return NULL_USER_OBJECT;
}

USER_OBJECT_
S_g_object_set_property(USER_OBJECT_ s_object, USER_OBJECT_ s_property_name, USER_OBJECT_ s_value)
{
        GObject * object = G_OBJECT(getPtrValue(s_object));
		gchar * property_name = asCString(s_property_name);
        GValue value = { 0, };

        USER_OBJECT_ _result = NULL_USER_OBJECT;

		R_setGValueForProperty(&value, G_OBJECT_GET_CLASS(object), property_name, s_value);
		
        g_object_set_property(object, property_name, &value);
        return(_result);
}
USER_OBJECT_
S_g_object_get_property(USER_OBJECT_ s_object, USER_OBJECT_ s_property_name)
{
        GObject * object = (GObject *)getPtrValue(s_object);
        gchar * property_name = asCString(s_property_name);
		GParamSpec *spec = g_object_class_find_property(G_OBJECT_GET_CLASS(object), property_name);
		
		USER_OBJECT_ _result = NULL_USER_OBJECT;
        GValue value = { 0, };

		if (!spec) {
            PROBLEM "Invalid property %s!\n", property_name
            ERROR;
        }
		g_value_init(&value, G_PARAM_SPEC_VALUE_TYPE(spec));
        g_object_get_property(object, property_name, &value);
        _result = retByVal(_result, "value", asRGValue(&value), NULL);
        return(_result);
}

USER_OBJECT_
R_getGObjectProps(USER_OBJECT_ sobj, USER_OBJECT_ argNames)
{
    USER_OBJECT_ ans;
    int i,n;

    n = GET_LENGTH(argNames);
    if(n == 0)
        return(NULL_USER_OBJECT);

    PROTECT(ans = NEW_LIST(n));
    for(i = 0; i < n; i++) {
		SET_VECTOR_ELT(ans, i, S_g_object_get_property(sobj, STRING_ELT(argNames, i)));
    }

    SET_NAMES(ans, argNames);
    UNPROTECT(1);
    return(ans);
}

USER_OBJECT_
R_setGObjectProps(USER_OBJECT_ sobj, USER_OBJECT_ svals)
{
    USER_OBJECT_ ans = NULL_USER_OBJECT;
    USER_OBJECT_ argNames = GET_NAMES(svals);
    int i,n;

    n = GET_LENGTH(argNames);
    if(n == 0)
        return(NULL_USER_OBJECT);

    for(i = 0; i < n; i++) {
       S_g_object_set_property(sobj, STRING_ELT(argNames, i), VECTOR_ELT(svals, i));
    }

    return(ans);
}

USER_OBJECT_
R_gObjectNew(USER_OBJECT_ stype, USER_OBJECT_ svals)
{
    USER_OBJECT_ argNames = GET_NAMES(svals);
	GType type = asCNumeric(stype);
    int i,n = GET_LENGTH(argNames);
	GParameter *params = g_new0(GParameter, n);
	GObjectClass *class = g_type_class_peek(type);
	GObject *ans;

	USER_OBJECT_ result = NULL_USER_OBJECT;
    
    for(i = 0; i < n; i++) {
		params[i].name = CHAR_DEREF(STRING_ELT(argNames, i));
        R_setGValueForProperty(&params[i].value, class, params[i].name, VECTOR_ELT(svals, i));
    }

	ans = g_object_newv(type, n, params);
	g_free(params);
	result = toRPointerWithFinalizer(ans, "GObject", g_object_unref);
	
    return(result);
}

/* adapted from pygtk, needed to handle their "property-based constructors"... */
gpointer
propertyConstructor(GType obj_type, char **prop_names, USER_OBJECT_ *args, int nargs)
{
    gpointer obj;
    if (nargs > 0) {
        int i;
		guint nparams;
        GParameter params[nargs];
        memset(params, 0, sizeof(GParameter)*nargs);

        if(!parseConstructorParams(obj_type, prop_names, params, &nparams, args))
            return(NULL);

        obj = g_object_newv(obj_type, nparams, params);

        for (i = 0; i < nparams; ++i)
            g_value_unset(&params[i].value);
    } else obj = g_object_newv(obj_type, 0, NULL);

    return(obj);
}
gboolean
parseConstructorParams(GType obj_type, char **prop_names, GParameter *params,
                           guint *nparams, USER_OBJECT_ *args)
{
    guint arg_i, param_i;
    GObjectClass *oclass;

    oclass = g_type_class_ref(obj_type);
    g_return_val_if_fail(oclass, FALSE);

    for (param_i = arg_i = 0; prop_names[arg_i]; ++arg_i) {
        GParamSpec *spec;
        if (!GET_LENGTH(args[arg_i]))
            continue;
        spec = g_object_class_find_property(oclass, prop_names[arg_i]);
        params[param_i].name = prop_names[arg_i];
        g_value_init(&params[param_i].value, spec->value_type);
        if (R_setGValueFromSValue(&params[param_i].value, args[arg_i]) == -1) {
            int i;
            fprintf(stderr, "Could not convert property '%s' of type '%s'\n",
                         prop_names[arg_i], g_type_name(spec->value_type));
            g_type_class_unref(oclass);
            for (i = 0; i < param_i; ++i)
                g_value_unset(&params[i].value);
            return FALSE;
        }
        ++param_i;
    }
    g_type_class_unref(oclass);
    *nparams = param_i;
    return TRUE;
}

GParamSpec*
asCGParamSpec(USER_OBJECT_ s_spec)
{
    GParamSpec* spec;

    spec = g_param_spec_internal(asCNumeric(VECTOR_ELT(s_spec,0)), asCString(VECTOR_ELT(s_spec, 1)),
                asCString(VECTOR_ELT(s_spec, 2)), asCString(VECTOR_ELT(s_spec, 3)),
                (GParamFlags)asCFlag(VECTOR_ELT(s_spec,4), G_TYPE_PARAM_FLAGS));

    return(spec);
}
USER_OBJECT_
asRGParamSpec(GParamSpec* spec)
{
    USER_OBJECT_ s_spec;

    PROTECT(s_spec = NEW_LIST(5));

    SET_VECTOR_ELT(s_spec, 0, asRGType(G_PARAM_SPEC_VALUE_TYPE(spec)));
    SET_VECTOR_ELT(s_spec, 1, asRString(g_param_spec_get_name(spec)));
    SET_VECTOR_ELT(s_spec, 2, asRString(g_param_spec_get_nick(spec)));
    SET_VECTOR_ELT(s_spec, 3, asRString(g_param_spec_get_blurb(spec)));
    SET_VECTOR_ELT(s_spec, 4, S_check_GParamFlags_value(asRInteger(spec->flags)));

    UNPROTECT(1);

    return(s_spec);
}
USER_OBJECT_
S_check_GParamFlags_value(USER_OBJECT_ val)
{
  static const char * const localNames[] = {"readable",
        "writable",
        "construct",
        "construct-only"
        "lax-validation",
        "private"};
  static const char * const realNames[]  = {"G_PARAM_READABLE",
        "G_PARAM_WRITABLE",
        "G_PARAM_CONSTRUCT",
        "G_PARAM_CONSTRUCT_ONLY",
        "G_PARAM_LAX_VALIDATION",
        "G_PARAM_PRIVATE"};
  static const int        cValues[]      = {G_PARAM_READABLE,
    G_PARAM_WRITABLE,
    G_PARAM_CONSTRUCT,
    G_PARAM_CONSTRUCT_ONLY,
    G_PARAM_LAX_VALIDATION,
    G_PARAM_PRIVATE};
  return(S_checkFlag(val, localNames, realNames, cValues, 6,"GParamFlags"));
}

/* User-data stuff */
USER_OBJECT_
S_g_object_set_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_data)
{
    GObject* object = (GObject*)getPtrValue(s_object);
    const gchar* key = (const gchar*)asCString(s_key);
    gpointer data = (gpointer)asCGenericData(s_data);

    USER_OBJECT_ _result = NULL_USER_OBJECT;

    g_object_set_data_full(object, key, data, (GDestroyNotify)R_ReleaseObject);

    return(_result);
}
USER_OBJECT_
S_g_object_get_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key)
{
        GObject* object = (GObject*)getPtrValue(s_object);
        const gchar* key = (const gchar*)asCString(s_key);

        gpointer ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = g_object_get_data(object, key);

        if(ans)
			_result = ans;

        return(_result);
}


/* GSignals */
USER_OBJECT_
R_connectGSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sfunc, USER_OBJECT_ signalName,
                    USER_OBJECT_ data, USER_OBJECT_ useData, USER_OBJECT_ after, USER_OBJECT_ first)
{
    GObject *w;
    GClosure *closure;
    int id;
    USER_OBJECT_ ans;

    w = G_OBJECT(getPtrValue(swidget));

    if (!LOGICAL_DATA(useData)[0])
        data = NULL_USER_OBJECT;

    closure = R_createGClosure(sfunc, data);
	((R_CallbackData *)closure->data)->userDataFirst = LOGICAL_DATA(first)[0];
	
    id = g_signal_connect_closure(G_OBJECT(w), CHAR_DEREF(STRING_ELT(signalName, 0)),
                    closure, (gboolean) LOGICAL_DATA(after)[0]);

    if(id == 0) {
        g_closure_sink(closure);
        PROBLEM "Couldn't register callback %s. Check name",
                      CHAR_DEREF(STRING_ELT(signalName, 0))
        ERROR;
    }

    PROTECT(ans = NEW_INTEGER(1));
    INTEGER_DATA(ans)[0] = id;
    SET_NAMES(ans, signalName);
    SET_CLASS(ans, asRString("CallbackID"));
    UNPROTECT(1);

    return(ans);
}
USER_OBJECT_
R_disconnectGSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sid)
{
    gint id = INTEGER_DATA(sid)[0];
    GObject *obj = G_OBJECT(getPtrValue(swidget));
    USER_OBJECT_ ans = NEW_LOGICAL(1);
    g_signal_handler_disconnect(obj, id);
    LOGICAL_DATA(ans)[0] = TRUE;
    return(ans);
}

USER_OBJECT_
R_blockGSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sid, USER_OBJECT_ on)
{
    gint id = INTEGER_DATA(sid)[0];
    GObject *obj = G_OBJECT(getPtrValue(swidget));
    USER_OBJECT_ ans = NEW_LOGICAL(1);
    if(LOGICAL_DATA(on)[0])
    g_signal_handler_block(obj, id);
    else
    g_signal_handler_unblock(obj, id);

    LOGICAL_DATA(ans)[0] = TRUE;

    return(ans);
}


USER_OBJECT_
R_gSignalEmit(USER_OBJECT_ sobj, USER_OBJECT_ signal, USER_OBJECT_ sargs)
{
    int n, i;
    GtkObject *obj;
    GValue *instance_and_args;
    GValue return_value;
    GQuark detail;
    USER_OBJECT_ ans = NULL_USER_OBJECT;
    guint sigId;
    char *sigName;
    GSignalQuery query;

    obj = GTK_OBJECT(getPtrValue(sobj));

    n = GET_LENGTH(sargs);
    instance_and_args = g_new0(GValue, n+1);

    sigName = CHAR_DEREF(STRING_ELT(signal, 0));
    g_signal_parse_name(sigName, G_OBJECT_TYPE(obj), &sigId, &detail, TRUE);
    g_signal_query(sigId, &query);

	g_value_init(&instance_and_args[0], G_OBJECT_TYPE(obj));
	g_value_set_object(&instance_and_args[0], G_OBJECT(obj));
    for(i = 0; i < n; i++) {
        g_value_init(&instance_and_args[i+1], query.param_types[i]);
        R_setGValueFromSValue(&instance_and_args[i+1], VECTOR_ELT(sargs, i));
    }

    if (query.return_type != G_TYPE_NONE) {
		g_value_init(&return_value, query.return_type);
	    g_signal_emitv(instance_and_args, sigId, detail, &return_value);
	} else g_signal_emitv(instance_and_args, sigId, detail, NULL);

    if(query.return_type != G_TYPE_NONE) {
       ans = asRGValue(&return_value);
	   g_value_unset(&return_value);
    }

	for(i = 0; i < n+1; i++)
		g_value_unset(&instance_and_args[i]);
	
    g_free(instance_and_args);

    return(ans);
}

USER_OBJECT_
R_gSignalStopEmssion(USER_OBJECT_ s_obj, USER_OBJECT_ s_signal)
{
	gpointer obj = getPtrValue(s_obj);
	const gchar *signal = asCString(s_signal);
	g_signal_stop_emission_by_name(obj, signal);
	return NULL_USER_OBJECT;
}

USER_OBJECT_
R_getGSignalIdsByType(USER_OBJECT_ className)
{
    GType type;

    type = (GType)  NUMERIC_DATA(className)[0];
    if(type == 0 || type == G_TYPE_INVALID) {
    PROBLEM "No type for class %s",
        CHAR_DEREF(STRING_ELT(className, 0))
        ERROR;
    }
    return(R_internal_getGSignalIds(type));
}

USER_OBJECT_
R_internal_getGSignalIds(GType type)
{
    int i;
    guint *ids, n_ids;
    USER_OBJECT_ ans;
    ids = g_signal_list_ids(type, &n_ids);

	PROTECT(ans = NEW_LIST(n_ids));
    for(i = 0; i < n_ids; i++) {
        SET_VECTOR_ELT(ans, i, R_createGSignalId(ids[i], NULL));
    }
    UNPROTECT(1);

    g_free(ids);

    return(ans);
}


USER_OBJECT_
R_createGSignalId(guint id, const char *val)
{
    USER_OBJECT_ ans;
    PROTECT(ans = NEW_NUMERIC(1));

    NUMERIC_DATA(ans)[0] =  id;
    if(val == NULL)
        val =  g_signal_name(id);

    SET_CLASS(ans, asRString("GSignalId"));
    SET_NAMES(ans, asRString(val));

    UNPROTECT(1);

    return(ans);
}

USER_OBJECT_
R_getGSignalInfo(USER_OBJECT_ sid)
{
    return(R_internal_getGSignalInfo(NUMERIC_DATA(sid)[0]));
}

USER_OBJECT_
R_internal_getGSignalInfo(guint id)
{
    USER_OBJECT_ ans, params, names;
    GSignalQuery info;
    int i;

    g_signal_query(id, &info);
    PROTECT(ans = NEW_LIST(SIGNAL_INFO_NUM_SLOTS));
    PROTECT(names = NEW_CHARACTER(SIGNAL_INFO_NUM_SLOTS));
    SET_STRING_ELT(names, RETURN_SLOT, COPY_TO_USER_STRING("returnType"));
    SET_STRING_ELT(names, SIGNAL_SLOT, COPY_TO_USER_STRING("signal"));
    SET_STRING_ELT(names, PARAMS_SLOT, COPY_TO_USER_STRING("parameters"));
    SET_STRING_ELT(names, OBJECT_SLOT, COPY_TO_USER_STRING("objectType"));
    /*SET_STRING_ELT(names, IS_USER_SLOT, COPY_TO_USER_STRING("isUserSignal"));*/
    SET_STRING_ELT(names, FLAGS_SLOT, COPY_TO_USER_STRING("runFlags"));

    /*SET_VECTOR_ELT(ans, IS_USER_SLOT, params = NEW_LOGICAL(1));
    LOGICAL_DATA(params)[0] = info->is_user_signal;*/

/* Has to be handled as a flag. */
    SET_VECTOR_ELT(ans, FLAGS_SLOT, params = NEW_INTEGER(1));
     INTEGER_DATA(params)[0] = info.signal_flags;

    SET_VECTOR_ELT(ans, OBJECT_SLOT, asRGType(info.itype));
    SET_VECTOR_ELT(ans, RETURN_SLOT, asRGType(info.return_type));
    SET_VECTOR_ELT(ans, SIGNAL_SLOT, R_createGSignalId(info.signal_id, info.signal_name));

    SET_VECTOR_ELT(ans, PARAMS_SLOT, params = NEW_LIST(info.n_params));
    for(i = 0; i < info.n_params; i++)
        SET_VECTOR_ELT(params, i, asRGType(info.param_types[i]));

    SET_NAMES(ans, names);

    UNPROTECT(2);

    return(ans);
}

/* GClosure */

USER_OBJECT_
R_g_closure_invoke(USER_OBJECT_ s_closure, USER_OBJECT_ s_args)
{
	GClosure *closure = (GClosure *)getPtrValue(s_closure);
	GValue *args = g_new0(GValue, GET_LENGTH(s_args));
	GValue ret = { 0, };
	gint i;
	
	for(i = 0; i < GET_LENGTH(s_args); i++) {
		initGValueFromSValue(VECTOR_ELT(s_args, i), &args[i]);
	}
	g_closure_invoke(closure, &ret, GET_LENGTH(s_args), args, NULL);
	g_free(args);
	return(asRGValue(&ret));
}

 /* Free the asCsociated R_CallbackData */
void
R_freeCBData_closure(R_CallbackData *data, GClosure *closure)
{
    R_freeCBData(data);
}

/* Actually invokes the R function upon invocation of the GClosure */
void
R_GClosureMarshal(GClosure *closure, GValue *return_value, guint n_param_values,
                    const GValue *param_values, gpointer invocation_hint, gpointer marshal_data)
{
    USER_OBJECT_ sarg;
    USER_OBJECT_ val;
    USER_OBJECT_ e, tmp;
    R_CallbackData *cbdata;
    int errorOccurred = 0;
    int i, numProtects = 0;
    USER_OBJECT_ envir = R_GlobalEnv;

    cbdata = closure->data;

    if(TYPEOF(cbdata->function) == CLOSXP) {
        PROTECT(e = allocVector(LANGSXP, n_param_values + 1 + (cbdata->useData == TRUE)));
        SETCAR(e, cbdata->function);
        numProtects++;
        tmp = CDR(e);
		
        if(cbdata->useData && cbdata->userDataFirst) {
            SETCAR(tmp, cbdata->data);
            tmp = CDR(tmp);
        }

        /*tmp = CDR(tmp);*/

		/*Rprintf("%d\n", n_param_values);*/
		
        for(i = 0; i < n_param_values; i++) {
            sarg = asRGValue((GValue *)&param_values[i]);
            SETCAR(tmp, sarg);
            tmp = CDR(tmp);
        }

        if(cbdata->useData && cbdata->userDataFirst == FALSE) {
            SETCAR(tmp, cbdata->data);
        }
    } else {
        e = cbdata->function;
        if(cbdata->data && cbdata->data != NULL_USER_OBJECT && TYPEOF(cbdata->data) == ENVSXP) {
            envir = cbdata->data;
        }
    }

    val = R_tryEval(e, envir, &errorOccurred);

    if(errorOccurred || !return_value || G_VALUE_TYPE(return_value) == G_TYPE_NONE) {
        UNPROTECT(numProtects);
        return;
    }

    PROTECT(val);
    numProtects++;

    R_setGValueFromSValue(return_value, val);
    UNPROTECT(numProtects);
}

/* Creates a GClosure for a specified R function and asCsociated user-data */
GClosure*
R_createGClosure(USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
    GClosure* closure;
    R_CallbackData *cbdata;

    if (TYPEOF(s_func) == EXTPTRSXP) { /* allows replacement with previous C (but not R) func */
        return(g_cclosure_new(G_CALLBACK(getPtrValue(s_func)), NULL, NULL));
    }

    cbdata = (R_CallbackData*) g_malloc(sizeof(R_CallbackData));
    if(!cbdata) {
        PROBLEM "Cannot allocate space for a measly R_CallbackData!"
        ERROR;
    }

    R_PreserveObject(s_func);
    cbdata->function = s_func;
	cbdata->userDataFirst = FALSE;
    if(s_data && GET_LENGTH(s_data) > 0) {
        R_PreserveObject(s_data);
        cbdata->data = s_data;
        cbdata->useData = TRUE;
    } else {
        cbdata->useData = FALSE;
        cbdata->data = NULL;
    }

    closure = g_closure_new_simple(sizeof(GClosure), (gpointer)cbdata);
    g_closure_add_finalize_notifier(closure, cbdata, (GClosureNotify)R_freeCBData_closure);
    g_closure_set_marshal(closure, R_GClosureMarshal);

    return(closure);
}
GClosure*
asCGClosure(USER_OBJECT_ s_closure)
{
    USER_OBJECT_ s_func, s_data = NULL_USER_OBJECT;
	s_func = getAttrib(s_closure, install("ref"));
	if (s_func != NULL_USER_OBJECT)
		return((GClosure *)getPtrValue(s_func));
	if (GET_LENGTH(s_closure) == 1)
        s_func = s_closure;
    else {
        s_func = VECTOR_ELT(s_closure, 0);
        s_data = VECTOR_ELT(s_closure, 1);
    }
    return(R_createGClosure(s_func, s_data));
}
USER_OBJECT_
asRGClosure(GClosure *closure)
{
	return(toRPointer(closure, "GClosure"));
}

/* GValue */

/* Take an initialized GValue and coerce an R object into it 
	1) Attempt to copy value directly 
	2) Attempt to transform value
	3) Attempt to set value directly 
*/
int
R_setGValueFromSValue(GValue *value, USER_OBJECT_ sval) {
    GValue *raw = createGValueFromSValue(sval);
    int ret = 0;

	if (raw && g_value_type_compatible(G_VALUE_TYPE(raw), G_VALUE_TYPE(value)))
        g_value_copy(raw, value);
    else if (raw && g_value_type_transformable(G_VALUE_TYPE(raw), G_VALUE_TYPE(value)))
        g_value_transform(raw, value);
	else switch(G_TYPE_FUNDAMENTAL(G_VALUE_TYPE(value))) {
		case G_TYPE_CHAR:
			g_value_set_char(value, asCCharacter(sval));
		break;
		case G_TYPE_UCHAR:
			g_value_set_uchar(value, asCCharacter(sval));
		break;
		case G_TYPE_INT:
			g_value_set_int(value, asCInteger(sval));
		break;
		case G_TYPE_UINT:
			g_value_set_uint(value, asCInteger(sval));
		break;
		case G_TYPE_LONG:
			g_value_set_long(value, asCInteger(sval));
		break;
		case G_TYPE_ULONG:
			g_value_set_ulong(value, asCNumeric(sval));
		break;
		case G_TYPE_BOOLEAN:
			g_value_set_boolean(value, asCLogical(sval));
		break;
		case G_TYPE_FLOAT:
			g_value_set_float(value, asCNumeric(sval));
		break;
		case G_TYPE_DOUBLE:
			g_value_set_double(value, asCNumeric(sval));
		break;
		case G_TYPE_STRING:
			g_value_set_string(value, asCString(sval));
		break;
		case G_TYPE_ENUM:
			g_value_set_enum(value, asCEnum(sval, G_VALUE_TYPE(value)));
		break;
		case G_TYPE_FLAGS:
			g_value_set_flags(value, asCFlag(sval, G_VALUE_TYPE(value)));
		break;
		case G_TYPE_BOXED:
			if (sval == NULL_USER_OBJECT)
				g_value_set_boxed(value, NULL);
			else if (G_VALUE_TYPE(value) == G_TYPE_STRV)
				g_value_set_boxed(value, asCStringArray(sval));
			else if (G_VALUE_TYPE(value) == GDK_TYPE_COLOR)
				g_value_set_boxed(value, asCGdkColor(sval));
			else g_value_set_boxed(value, getPtrValue(sval));
		break;
		case G_TYPE_POINTER:
			g_value_set_pointer(value, sval == NULL_USER_OBJECT ? NULL : getPtrValue(sval));
		break;
		case G_TYPE_INTERFACE:
		case G_TYPE_OBJECT:
			g_value_set_object(value, sval == NULL_USER_OBJECT ? NULL : getPtrValue(sval));
		break;
		case G_TYPE_INVALID:
			fprintf(stderr, "Attempt to set invalid type\n");fflush(stderr);
		break;
		case G_TYPE_NONE:
			fprintf(stderr, "None type\n");fflush(stderr);
		break;
		default:
			PROBLEM "got an unknown/unhandled type named: %s\n", g_type_name(G_VALUE_TYPE(value))
			ERROR;
		break;
	}
    
	if(raw) {
		g_value_unset(raw);
		g_free(raw);
	}
	
    return(ret);
}

/*
int
R_setGValueFromSValue(GValue *value, USER_OBJECT_ sval)
{
    GValue *raw = g_new0(GValue, 1);
    int ret = 0;

    switch(TYPEOF(sval)) {
      case LGLSXP:
        g_value_init(raw, G_TYPE_BOOLEAN);
        g_value_set_boolean(raw, LOGICAL_DATA(sval)[0]);
    break;
      case INTSXP:
        g_value_init(raw, G_TYPE_INT);
        g_value_set_int(raw, INTEGER_DATA(sval)[0]);
    break;
      case REALSXP:
        g_value_init(raw, G_TYPE_DOUBLE);
        g_value_set_double(raw, NUMERIC_DATA(sval)[0]);
    break;
      case EXTPTRSXP:
        g_value_init(raw, G_TYPE_POINTER);
        g_value_set_pointer(raw, getPtrValue(sval));
    break;
      case STRSXP:
        g_value_init(raw, G_TYPE_STRING);
        g_value_set_string(raw, asCString(sval));
    break;
     default:
     fprintf(stderr, "Unhandled R type %d\n", TYPEOF(sval));fflush(stderr);
    }

    if (g_value_type_compatible(G_VALUE_TYPE(raw), G_VALUE_TYPE(value))) {
        g_value_copy(raw, value);
    }
    else if (g_value_type_transformable(G_VALUE_TYPE(raw), G_VALUE_TYPE(value)))
        g_value_transform(raw, value);
    else {
        fprintf(stderr, "Could not set GValue type %s\n", g_type_name(G_VALUE_TYPE(value)));fflush(stderr);
        ret = -1;
    }

    g_value_unset(raw);
    g_free(raw);

    return(ret);
}
*/

/* Convert a GValue to an R object */
USER_OBJECT_
asRGValue(GValue *value)
{
    USER_OBJECT_ ans = NULL_USER_OBJECT;

    switch(G_TYPE_FUNDAMENTAL(G_VALUE_TYPE(value))) {
      case G_TYPE_CHAR:
      {
          char tmp[2] = "a";
          tmp[0] = g_value_get_char(value);
          ans = asRString(tmp);
      }
      break;
      case G_TYPE_UCHAR:
      {
          char tmp[2] = "a";
          tmp[0] = g_value_get_uchar(value);
          ans = asRString(tmp);
      }
      break;
      case G_TYPE_INT:
      ans = asRInteger(g_value_get_int(value));
      break;
      case G_TYPE_UINT:
      ans = asRInteger(g_value_get_uint(value));
      break;
      case G_TYPE_LONG:
      ans = asRInteger(g_value_get_long(value));
      break;
      case G_TYPE_ULONG:
      ans = asRNumeric(g_value_get_ulong(value));
      break;

      case G_TYPE_BOOLEAN:
      ans = asRLogical(g_value_get_boolean(value));
      break;

      case G_TYPE_FLOAT:
      ans = asRNumeric(g_value_get_float(value));
      break;

      case G_TYPE_DOUBLE:
      ans = asRNumeric(g_value_get_double(value));
      break;

      case G_TYPE_STRING:
      ans = asRString(g_value_get_string(value));
      break;


      case G_TYPE_ENUM:
      ans = asREnum(g_value_get_enum(value), G_VALUE_TYPE(value));
      break;
      case G_TYPE_FLAGS:
      ans = asRFlag(g_value_get_flags(value), G_VALUE_TYPE(value));
      break;

      case G_TYPE_BOXED:
        if (G_VALUE_TYPE(value) == GDK_TYPE_EVENT)
          ans = toRGdkEvent(g_value_get_boxed(value), FALSE);
        else ans = toRPointer(g_value_get_boxed(value), g_type_name(G_VALUE_TYPE(value)));
      break;

      case G_TYPE_POINTER:
	  	/*Rprintf("%s\n", g_type_name(G_VALUE_TYPE(value)));*/
		if (G_VALUE_TYPE(value) == G_TYPE_VALUE)
			ans = asRGValue(value); /* yes the GValues can be nested */
        ans = toRPointer(g_value_get_pointer(value), "gpointer");
      break;

      case G_TYPE_INVALID:
      fprintf(stderr, "Attempt to get invalid type\n");fflush(stderr);
      break;

      case G_TYPE_NONE:
      fprintf(stderr, "None type\n");fflush(stderr);
      break;

      case G_TYPE_OBJECT:
      case G_TYPE_INTERFACE:
          ans = toRPointer(g_value_get_object(value), g_type_name(G_VALUE_TYPE(value)));
      break;

      default:
        PROBLEM "got an unknown/unhandled type named: %s\n", g_type_name(G_VALUE_TYPE(value))
        ERROR;
      break;
    }

    return(ans);
}

/* Make a GValue from scratch */
GValue *
createGValueFromSValue(USER_OBJECT_ sval) {
    /*GValue *raw = (GValue *)S_alloc(1, sizeof(GValue));*/
    GValue *raw = (GValue *)g_new0(GValue, 1);
	if (!initGValueFromSValue(sval, raw)) {
		g_free(raw);
		raw = NULL;
	}
    return(raw);
}

GType
getSValueGType(USER_OBJECT_ sval)
{
	switch(TYPEOF(sval)) {
     case LGLSXP:
        return(G_TYPE_BOOLEAN);
	 break;
	 case INTSXP:
	{
		USER_OBJECT_ levels;
		if ((levels = getAttrib(sval, install("levels"))) != NULL_USER_OBJECT)
			return(G_TYPE_STRING);
		else return(G_TYPE_INT);
	}
    break;
      case REALSXP:
		return(G_TYPE_DOUBLE);
	break;
      case EXTPTRSXP:
	  {
		GType type = g_type_from_name(asCString(GET_CLASS(sval)));
		if (type == G_TYPE_INVALID)
			return(G_TYPE_POINTER);
        else return(type);
	  }
    break;
      case STRSXP:
	  case CHARSXP:
        return(G_TYPE_STRING);
    break;
    }
	return(G_TYPE_INVALID);
}

gboolean
initGValueFromSValue(USER_OBJECT_ sval, GValue *raw) {
  /* character is special case, because there is a GType for string arrays
     but not for primitive arrays */
	if (IS_VECTOR(sval) && !IS_CHARACTER(sval))
		return(initGValueFromVector(sval, 0, raw));
	else switch(TYPEOF(sval)) {
		case EXTPTRSXP:
	  {
      GType type = g_type_from_name(asCString(GET_CLASS(sval)));
      if (type == G_TYPE_INVALID)
        g_value_init(raw, G_TYPE_POINTER);
      else g_value_init(raw, type);
      if (G_VALUE_HOLDS(raw, G_TYPE_OBJECT) || G_VALUE_HOLDS(raw, G_TYPE_INTERFACE))
        g_value_set_object(raw, getPtrValue(sval));
      else if (G_VALUE_HOLDS(raw, G_TYPE_BOXED))
        g_value_set_boxed(raw, getPtrValue(sval));
      else g_value_set_pointer(raw, getPtrValue(sval));
	  }
	  break;
	  case STRSXP:
	  case CHARSXP:
        if (IS_VECTOR(sval) && GET_LENGTH(sval) > 1) {
            g_value_init(raw, G_TYPE_STRV);
            g_value_set_boxed(raw, (gpointer)asCStringArray(sval));
        } else {
            g_value_init(raw, G_TYPE_STRING);
            g_value_set_string(raw, asCString(sval));
        }
    break;
	  default:
	  	return(FALSE);
	}
	return(TRUE);
}

gboolean
initGValueFromVector(USER_OBJECT_ sval, gint n, GValue *raw) {
	switch(TYPEOF(sval)) {
    case LGLSXP:
      g_value_init(raw, G_TYPE_BOOLEAN);
      g_value_set_boolean(raw, LOGICAL_DATA(sval)[n]);
    break;
    case INTSXP:
    {
      USER_OBJECT_ levels;
      if ((levels = getAttrib(sval, install("levels"))) != NULL_USER_OBJECT) {
        gint level = INTEGER_DATA(sval)[n];
        USER_OBJECT_ level_str = NA_STRING;
        /*Rprintf("getting level: %d\n", level);*/
        if (level != NA_INTEGER)
          level_str = STRING_ELT(levels, level-1);
        g_value_init(raw, G_TYPE_STRING);
        g_value_set_string(raw, CHAR_DEREF(level_str));
      } else {
        g_value_init(raw, G_TYPE_INT);
        g_value_set_int(raw, INTEGER_DATA(sval)[n]);
      }
    }
    break;
    case REALSXP:
      g_value_init(raw, G_TYPE_DOUBLE);
      g_value_set_double(raw, NUMERIC_DATA(sval)[n]);
    break;
	  case STRSXP:
	  case CHARSXP:
      g_value_init(raw, G_TYPE_STRING);
      g_value_set_string(raw, CHAR_DEREF(STRING_ELT(sval, n)));
    break;
    default:
      /*fprintf(stderr, "Unhandled R type %d\n", TYPEOF(sval));fflush(stderr);*/
      return(FALSE);
  }
	return(TRUE);
}

GValue*
asCGValue(USER_OBJECT_ sval)
{ 
	GValue *gval = createGValueFromSValue(sval);
	if (!gval) {
		PROBLEM "Could not create GValue for R type %d\n", TYPEOF(sval)
		ERROR;
	}
	return(gval);
}

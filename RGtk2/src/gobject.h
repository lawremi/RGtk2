#include "RGtk2.h"
#include "utils.h"

USER_OBJECT_ R_gObjectNew(USER_OBJECT_ stype, USER_OBJECT_ svals);

/* GObject Properties */

gpointer propertyConstructor(GType obj_type, char **prop_names, USER_OBJECT_ *args, int nargs);
gboolean parseConstructorParams(GType obj_type, char **prop_names, GParameter *params,
                           guint *nparams, USER_OBJECT_ *args);
USER_OBJECT_ R_gtkGetGTypeParamSpecs(USER_OBJECT_ sobj, USER_OBJECT_ parent);
USER_OBJECT_ R_internal_getClassParamSpecs(GObjectClass *class);
USER_OBJECT_ S_g_object_set_property(USER_OBJECT_ s_object, USER_OBJECT_ s_property_name, USER_OBJECT_ s_value);
USER_OBJECT_ S_g_object_get_property(USER_OBJECT_ s_object, USER_OBJECT_ s_property_name);
USER_OBJECT_ R_getGObjectProps(USER_OBJECT_ sobj, USER_OBJECT_ argNames);
USER_OBJECT_ R_setGObjectProps(USER_OBJECT_ sobj, USER_OBJECT_ svals);
USER_OBJECT_ S_check_GParamFlags_value(USER_OBJECT_ val);

/* GSignals */

USER_OBJECT_ R_connectSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sfunc, USER_OBJECT_ signalName,
                    USER_OBJECT_ data, USER_OBJECT_ useData, USER_OBJECT_ after);
USER_OBJECT_ R_disconnectGSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sid);
USER_OBJECT_ R_blockGSignalHandler(USER_OBJECT_ swidget, USER_OBJECT_ sid, USER_OBJECT_ on);
USER_OBJECT_ R_gSignalEmit(USER_OBJECT_ sobj, USER_OBJECT_ signal, USER_OBJECT_ sargs);
USER_OBJECT_ R_getGSignalIdsByType(USER_OBJECT_ className);
USER_OBJECT_ R_internal_getGSignalIds(GType type);
USER_OBJECT_ R_createGSignalId(guint id, const char *val);
USER_OBJECT_ R_getGSignalInfo(USER_OBJECT_ sid);
enum {SIGNAL_SLOT, PARAMS_SLOT, RETURN_SLOT, /*IS_USER_SLOT,*/ FLAGS_SLOT, OBJECT_SLOT, SIGNAL_INFO_NUM_SLOTS};
USER_OBJECT_ R_internal_getGSignalInfo(guint id);

/* GClosure */

void R_freeCBData_closure(R_CallbackData *data, GClosure *closure);
void R_GClosureMarshal(GClosure *closure, GValue *return_value, guint n_param_values,
                    const GValue *param_values, gpointer invocation_hint, gpointer marshal_data);
GClosure* R_createGClosure(USER_OBJECT_ s_func, USER_OBJECT_ s_data);

/* GType */

USER_OBJECT_ R_getObjectTypeHierarchy(USER_OBJECT_);
USER_OBJECT_ R_getTypeHierarchy(USER_OBJECT_ sobj);
USER_OBJECT_ R_internal_getGTypeHierarchy(GType type);
USER_OBJECT_ R_getObjectTypeName(USER_OBJECT_ sobj);
USER_OBJECT_ R_getObjectType(USER_OBJECT_ sobj);
USER_OBJECT_ R_getTypeFromName(USER_OBJECT_ name);
USER_OBJECT_ R_getInterfaces(USER_OBJECT_ type);
USER_OBJECT_ R_internal_getInterfaces(GType type);

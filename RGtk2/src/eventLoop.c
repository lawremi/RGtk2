#include "RGtk2/gtk.h"
#include "Reventloop.h"

SEXP R_gIOAddWatch(int fd,  void (*handler)(void *, int, int), void *userData);
SEXP R_gIdleAdd(R_IdleFunc f, void *userData);
SEXP R_gTimeoutAdd(int interval, R_IdleFunc f, void *userData);
int R_gSourceRemove(SEXP id);

R_EventLoop R_Gtk2EventLoop = {
                     "GTK",
                 &gtk_init,
             NULL,
                 &gtk_main,
             &gtk_main_iteration_do,
             &gtk_main_quit,
                     &R_gIOAddWatch,
                     &R_gIdleAdd,
                     &R_gTimeoutAdd,

             &R_gSourceRemove,
             &R_gSourceRemove,
             &R_gSourceRemove
                    };

SEXP
R_gIdleAdd(R_IdleFunc f, void *userData)
{
 SEXP ans;
 ans = allocVector(REALSXP, 1);
 REAL(ans)[0] = g_idle_add(f, userData);
 return(ans);
}


int
R_gSourceRemove(SEXP id)
{
  g_source_remove(REAL(id)[0]);
  return(TRUE);
}

SEXP
R_gTimeoutAdd(int interval, R_IdleFunc f, void *userData)
{
 SEXP ans;
 ans = allocVector(REALSXP, 1);
 REAL(ans)[0] = g_timeout_add(interval, f, userData);
 return(ans);
}

typedef struct {
    void (*fun)(void *, int, int);
    void *data;
} R_GIOFunc_data;

gboolean
R_GIOFunc(GIOChannel *source, GIOCondition condition, gpointer data)
{
    R_GIOFunc_data *fdata = (R_GIOFunc_data *)data;

    fdata->fun(fdata->data, g_io_channel_unix_get_fd(source), condition);

    return(TRUE);
}

SEXP
R_gIOAddWatch(int fd,  void (*handler)(void *, int, int), void *userData)
{
 SEXP ans;
 GIOChannel *channel = g_io_channel_unix_new(fd);
 
 /* need to wrap the generic handler in the user data */
 R_GIOFunc_data *data = (R_GIOFunc_data *)R_alloc(1, sizeof(R_GIOFunc_data));

 data->fun = handler;
 data->data = userData;

 g_io_channel_set_encoding(channel, NULL, NULL); /* raw binary (not really needed) */

 ans = allocVector(REALSXP, 1);
 REAL(ans)[0] = g_io_add_watch(channel, G_IO_IN, R_GIOFunc, data);

 g_io_channel_unref(channel);

 return(ans);
}

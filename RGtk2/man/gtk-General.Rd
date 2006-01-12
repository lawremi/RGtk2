\alias{gtk-General}
\alias{GtkModuleInitFunc}
\alias{GtkModuleDisplayInitFunc}
\alias{GtkKeySnoopFunc}
\name{gtk-General}
\title{Main loop and Events}
\description{Library initialization, main event loop, and events}
\usage{
\link{gtkSetLocale}()
\link{gtkDisableSetlocale}()
\link{gtkGetDefaultLanguage}()
\link{gtkInit}(args = .GtkInitArgs)
\link{gtkInitCheck}(args = .GtkInitArgs)
\link{gtkExit}(error.code)
\link{gtkEventsPending}()
\link{gtkMain}()
\link{gtkMainLevel}()
\link{gtkMainQuit}()
\link{gtkMainIteration}()
\link{gtkMainIterationDo}(blocking = TRUE)
\link{gtkMainDoEvent}(event)
\link{gtkTrue}()
\link{gtkFalse}()
\link{gtkGrabAdd}(object)
\link{gtkGrabGetCurrent}()
\link{gtkGrabRemove}(object)
\link{gtkInitAdd}(fun, data = NULL)
\link{gtkQuitAddDestroy}(main.level, object)
\link{gtkQuitAdd}(main.level, fun, data = NULL)
\link{gtkQuitAddFull}(main.level, fun, data = NULL)
\link{gtkQuitRemove}(quit.handler.id)
\link{gtkQuitRemoveByData}(data)
\link{gtkTimeoutAddFull}(interval, fun, data = NULL)
\link{gtkTimeoutAdd}(interval, fun, data = NULL)
\link{gtkTimeoutRemove}(timeout.handler.id)
\link{gtkIdleAdd}(fun, data = NULL)
\link{gtkIdleAddPriority}(priority, fun, data = NULL)
\link{gtkIdleAddFull}(priority, fun, data = NULL)
\link{gtkIdleRemove}(idle.handler.id)
\link{gtkIdleRemoveByData}(data)
\link{gtkInputAddFull}(source, condition, fun, data = NULL)
\link{gtkInputRemove}(input.handler.id)
\link{gtkKeySnooperInstall}(snooper, func.data = NULL)
\link{gtkKeySnooperRemove}(snooper.handler.id)
\link{gtkGetCurrentEvent}()
\link{gtkGetCurrentEventTime}()
\link{gtkGetCurrentEventState}(state)
\link{gtkGetEventWidget}(event)
\link{gtkPropagateEvent}(object, event)
}
\details{Before using GTK+, you need to initialize it; initialization connects
to the window system display, and parses some standard command line
arguments. The \code{\link{gtkInit}} function initializes GTK+. \code{\link{gtkInit}} exits
the application if errors occur; to avoid this, use \code{\link{gtkInitCheck}}. 
\code{\link{gtkInitCheck}} allows you to recover from a failed GTK+
initialization - you might start up your application in text mode instead.
  
Like all GUI toolkits, GTK+ uses an event-driven programming
model. When the user is doing nothing, GTK+ sits in the
\dfn{main loop} and waits for input. If the user
performs some action - say, a mouse click - then the main loop "wakes
up" and delivers an event to GTK+. GTK+ forwards the event to one or
more widgets.
  
When widgets receive an event, they frequently emit one or more 
\dfn{signals}. Signals notify your program that
"something interesting happened" by invoking functions you've
connected to the signal with \code{\link{gSignalConnect}}. Functions connected
to a signal are often termed \dfn{callbacks}. 
  
When your callbacks are invoked, you would typically take some action
- for example, when an Open button is clicked you might display a 
\code{GtkFileSelectionDialog}. After a callback finishes, GTK+ will return
to the main loop and await more user input.
  
\emph{Typical   \code{main}   function for a GTK+ application}
\preformatted{int 
main (int argc, char **argv)
{
  /* Initialize i18n support */
  gtk_set_locale (    );

  /* Initialize the widget set */
  gtk_init (&argc, &argv);

  /* Create the main window */
  mainwin = gtk_window_new (GTK_WINDOW_TOPLEVEL);

  /* Set up our GUI elements */
  ...

  /* Show the application window */
  gtk_widget_show_all (mainwin);

  /* Enter the main event loop, and wait for user interaction */
  gtk_main (    );

  /* The user lost interest */
  return 0;
}}
  
It's OK to use the GLib main loop directly instead of \code{\link{gtkMain}},
though it involves slightly more typing. See \code{GMainLoop} in the GLib
documentation.}
\section{User Functions}{\describe{
\item{\code{GtkModuleInitFunc(argc, argv)}}{
Each GTK+ module must have a function \code{gtkModuleInit()} with this prototype.
This function is called after loading the module with the \code{argc} and \code{argv} 
cleaned from any arguments that GTK+ handles itself.

\describe{
\item{\code{argc}}{[integer] Pointer to the number of arguments remaining after \code{\link{gtkInit}}.}
\item{\code{argv}}{[character] Points to the argument vector.}
}

}
\item{\code{GtkModuleDisplayInitFunc(display)}}{
  Since 2.2

\describe{\item{\code{display}}{[\code{\link{GdkDisplay}}] }}

}
\item{\code{GtkKeySnoopFunc(grab.widget, event, func.data)}}{
Key snooper functions are called before normal event delivery.
They can be used to implement custom key event handling.

\describe{
\item{\code{grab.widget}}{[\code{\link{GtkWidget}}] the widget to which the event will be delivered.}
\item{\code{event}}{[\code{\link{GdkEventKey}}] the key event.}
\item{\code{func.data}}{[R object] the \code{func.data} supplied to \code{\link{gtkKeySnooperInstall}}.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-General.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

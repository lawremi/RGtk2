\alias{gtk-General}
\alias{GtkModuleInitFunc}
\alias{GtkModuleDisplayInitFunc}
\alias{GtkKeySnoopFunc}
\name{gtk-General}
\title{Main loop and Events}
\description{Library initialization, main event loop, and events}
\section{Methods and Functions}{
\code{\link{gtkGetDefaultLanguage}()}\cr
\code{\link{gtkInit}(args = "R")}\cr
\code{\link{gtkExit}(error.code)}\cr
\code{\link{gtkEventsPending}()}\cr
\code{\link{gtkMain}()}\cr
\code{\link{gtkMainLevel}()}\cr
\code{\link{gtkMainQuit}()}\cr
\code{\link{gtkMainIteration}()}\cr
\code{\link{gtkMainIterationDo}(blocking = TRUE)}\cr
\code{\link{gtkMainDoEvent}(event)}\cr
\code{\link{gtkTrue}()}\cr
\code{\link{gtkFalse}()}\cr
\code{\link{gtkGrabAdd}(object)}\cr
\code{\link{gtkGrabGetCurrent}()}\cr
\code{\link{gtkGrabRemove}(object)}\cr
\code{\link{gtkInitAdd}(fun, data = NULL)}\cr
\code{\link{gtkQuitAddDestroy}(main.level, object)}\cr
\code{\link{gtkQuitAdd}(main.level, fun, data = NULL)}\cr
\code{\link{gtkQuitAddFull}(main.level, fun, data = NULL)}\cr
\code{\link{gtkQuitRemove}(quit.handler.id)}\cr
\code{\link{gtkQuitRemoveByData}(data)}\cr
\code{\link{gtkTimeoutAddFull}(interval, fun, data = NULL)}\cr
\code{\link{gtkTimeoutAdd}(interval, fun, data = NULL)}\cr
\code{\link{gtkTimeoutRemove}(timeout.handler.id)}\cr
\code{\link{gtkIdleAdd}(fun, data = NULL)}\cr
\code{\link{gtkIdleAddPriority}(priority, fun, data = NULL)}\cr
\code{\link{gtkIdleAddFull}(priority, fun, data = NULL)}\cr
\code{\link{gtkIdleRemove}(idle.handler.id)}\cr
\code{\link{gtkIdleRemoveByData}(data)}\cr
\code{\link{gtkInputRemove}(input.handler.id)}\cr
\code{\link{gtkKeySnooperInstall}(snooper, func.data = NULL)}\cr
\code{\link{gtkKeySnooperRemove}(snooper.handler.id)}\cr
\code{\link{gtkGetCurrentEvent}()}\cr
\code{\link{gtkGetCurrentEventTime}()}\cr
\code{\link{gtkGetCurrentEventState}()}\cr
\code{\link{gtkGetEventWidget}(event)}\cr
\code{\link{gtkPropagateEvent}(object, event)}\cr
}
\section{Detailed Description}{Before using GTK+, you need to initialize it; initialization connects
to the window system display, and parses some standard command line
arguments. The \code{\link{gtkInit}} function initializes GTK+. \code{\link{gtkInit}} exits
the application if errors occur; to avoid this, use \code{gtkInitCheck()}.
\code{gtkInitCheck()} allows you to recover from a failed GTK+
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
\verb{GtkFileSelectionDialog}. After a callback finishes, GTK+ will return
to the main loop and await more user input.
  
 \emph{Typical   \code{main}   function for a GTK+ application}\preformatted{int
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
}
}  
It's OK to use the GLib main loop directly instead of \code{\link{gtkMain}},
though it involves slightly more typing. See \verb{GMainLoop} in the GLib
documentation.}
\section{User Functions}{\describe{
\item{\code{GtkModuleInitFunc(argc, argv)}}{
Each GTK+ module must have a function \code{gtkModuleInit()} with this prototype.
This function is called after loading the module with the \code{argc} and \code{argv}
cleaned from any arguments that GTK+ handles itself.

\describe{
\item{\code{argc}}{Pointer to the number of arguments remaining after \code{\link{gtkInit}}.}
\item{\code{argv}}{Points to the argument vector.}
}


}
\item{\code{GtkModuleDisplayInitFunc()}}{
  Since 2.2




}
\item{\code{GtkKeySnoopFunc(grab.widget, event, func.data)}}{
Key snooper functions are called before normal event delivery.
They can be used to implement custom key event handling.

\describe{
\item{\code{grab.widget}}{the widget to which the event will be delivered.}
\item{\code{event}}{the key event.}
\item{\code{func.data}}{the \code{func.data} supplied to \code{\link{gtkKeySnooperInstall}}.}
}

\emph{Returns:} [integer] \code{TRUE} to stop further processing of \code{event}, \code{FALSE} to continue.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-General.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

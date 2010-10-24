\alias{gtkBuilderConnectSignals}
\name{gtkBuilderConnectSignals}
\title{gtkBuilderConnectSignals}
\description{This method is a simpler variation of \code{\link{gtkBuilderConnectSignalsFull}}.
It uses \verb{GModule}'s introspective features (by opening the module \code{NULL}) 
to look at the application's symbol table. From here it tries to match
the signal handler names given in the interface description with
symbols in the application and connects the signals.}
\usage{gtkBuilderConnectSignals(object, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{user.data}}{a pointer to a structure sent in as user data to all signals}
}
\details{Note that this function will not work correctly if \verb{GModule} is not
supported on the platform.
  
When compiling applications for Windows, you must declare signal callbacks
with \verb{G_MODULE_EXPORT}, or they will not be put in the symbol table.
On Linux and Unices, this is not necessary; applications should instead
be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
gmodule-export-2.0.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

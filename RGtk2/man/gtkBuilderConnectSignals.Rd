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
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{user.data}}{[R object]  a pointer to a structure sent in as user data to all signals}
}
\details{Note that this function will not work correctly if \verb{GModule} is not
supported on the platform.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

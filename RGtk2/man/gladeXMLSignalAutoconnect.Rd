\alias{gladeXMLSignalAutoconnect}
\name{gladeXMLSignalAutoconnect}
\title{gladeXMLSignalAutoconnect}
\description{This function is a variation of glade_xml_signal_connect.  It uses
gmodule's introspective features (by openning the module \code{NULL}) to
look at the application's symbol table.  From here it tries to match
the signal handler names given in the interface description with
symbols in the application and connects the signals.}
\usage{gladeXMLSignalAutoconnect(object)}
\arguments{\item{\verb{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}}
\details{You should add gmodule-export-2.0 to your pkg-config checks to ensure 
that your application's executable exports the signal handlers. This is not 
necessary if the signal handlers are in a shared library.
  
Note that this function will not work correctly if gmodule is not
supported on the platform.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

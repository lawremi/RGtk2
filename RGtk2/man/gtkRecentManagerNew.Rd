\alias{gtkRecentManagerNew}
\name{gtkRecentManagerNew}
\title{gtkRecentManagerNew}
\description{Creates a new recent manager object.  Recent manager objects are used to
handle the list of recently used resources.  A \verb{\link{GtkRecentManager}} object
monitors the recently used resources list, and emits the "changed" signal
each time something inside the list changes.}
\usage{gtkRecentManagerNew()}
\details{\verb{\link{GtkRecentManager}} objects are expensive: be sure to create them only when
needed. You should use \code{\link{gtkRecentManagerGetDefault}} instead.  

  Since  2.10}
\value{[\verb{\link{GtkRecentManager}}]  A newly created \verb{\link{GtkRecentManager}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

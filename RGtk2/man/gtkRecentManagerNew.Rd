\alias{gtkRecentManagerNew}
\name{gtkRecentManagerNew}
\title{gtkRecentManagerNew}
\description{Creates a new recent manager object.  Recent manager objects are used to
handle the list of recently used resources.  A \code{\link{GtkRecentManager}} object
monitors the recently used resources list, and emits the "changed" signal
each time something inside the list changes.}
\usage{gtkRecentManagerNew()}
\details{\code{\link{GtkRecentManager}} objects are expensive: be sure to create them only when
needed. You should use \code{\link{gtkRecentManagerGetDefault}} instead.
  Since 2.10}
\value{[\code{\link{GtkRecentManager}}] A newly created \code{\link{GtkRecentManager}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

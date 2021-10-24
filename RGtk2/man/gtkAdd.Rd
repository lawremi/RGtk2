\name{gtkAdd}
\alias{gtkAdd}
\title{Add Gtk wdget to parent container}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

This adds the specified Gtk widget
to the hierarchy defining a graphical
interface by giving it a parent
and a place in the parent's container.
This is then followed by a call to
\code{\link{gtkShow}} to make the
widget visible.
}
\usage{
gtkAdd(parent, ...)
}
\arguments{
  \item{parent}{the parent container widget (e.g. a box, etc. )
    into which the widget `w' is to be added.}
  \item{...}{one or more widgets that are to be added to the parent
    container.}
}

\value{
Currently, a logical value indicating whether
the, typically a logical value, \code{TRUE},
indicating success.
This will be changed to be a widget.
Perhaps we will add an option to allow a scrolled
container or a pane to be added in which case the
result will be that newly created container widget.
}
\references{
\url{http://www.gtk.org}
\url{http://www.omegahat.net/RGtk/}
}
\author{Duncan Temple Lang}

\seealso{
 \code{\link{gtkContainerAdd}}
 \code{\link{gtkWindow}}
 \code{\link{gtkShow}}
}



\keyword{interface}
\keyword{internal}



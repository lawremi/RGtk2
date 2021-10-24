\name{gtkShow}
\alias{gtkShow}
\title{Show/realize one or more Widgets}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

This causes each widget given in the call
to be realized or actually displayed 
}
\usage{
gtkShow(..., all = T)
}

\arguments{
  \item{\dots}{any collection of widgets
   that are to be realized. These are processed
   in the order they are given.}
 \item{all}{a logical value indicating whether to show
   the particular widget (\code{FALSE}), or both
   it and all of the sub-widgets
   which it contains (\code{TRUE}). This is the difference between
   a call to \code{gtk_widget_show} and \code{gtk_widget_show_all}
   in the lower-level Gtk interface. }
}
\details{
  This calls \code{gtk_widget_show} or
  \code{gtk_widget_show_all} for each widget.
}
\value{
An integer giving the number of widgets
that were realized in the call.
}
\references{
\url{http://www.gtk.org}
\url{http://www.omegahat.net/RGtk/}
}
\author{Duncan Temple Lang}

\seealso{
\code{\link{gtkWidgetShow}}
}

\examples{
  if (gtkInit()) {
    w <- gtkWindow(show = FALSE) 
    b <- gtkButton("Hit me") # automatically shown in the creation.
    w$add(b)
    gtkShow(w)
  }
}

\keyword{interface}
\keyword{internal}


\alias{gtkTextIterGetAttributes}
\name{gtkTextIterGetAttributes}
\title{gtkTextIterGetAttributes}
\description{Computes the effect of any tags applied to this spot in the
text. The \code{values} parameter should be initialized to the default
settings you wish to use if no tags are in effect. You'd typically
obtain the defaults from \code{\link{gtkTextViewGetDefaultAttributes}}.}
\usage{gtkTextIterGetAttributes(object, values)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{values}}{a \code{\link{GtkTextAttributes}} to be filled in}
}
\details{\code{\link{gtkTextIterGetAttributes}} will modify \code{values}, applying the
effects of any tags present at \code{iter}. If any tags affected \code{values},
the function returns \code{TRUE}.}
\value{[logical] \code{TRUE} if \code{values} was modified}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

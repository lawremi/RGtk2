\alias{gtkTreeViewSetLevelIndentation}
\name{gtkTreeViewSetLevelIndentation}
\title{gtkTreeViewSetLevelIndentation}
\description{Sets the amount of extra indentation for child levels to use in \code{tree.view}
in addition to the default indentation.  The value should be specified in
pixels, a value of 0 disables this feature and in this case only the default
indentation will be used.
This does not have any visible effects for lists.}
\usage{gtkTreeViewSetLevelIndentation(object, indentation)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{indentation}}{the amount, in pixels, of extra indentation in \code{tree.view}.}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

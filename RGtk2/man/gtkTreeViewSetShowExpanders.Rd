\alias{gtkTreeViewSetShowExpanders}
\name{gtkTreeViewSetShowExpanders}
\title{gtkTreeViewSetShowExpanders}
\description{Sets whether to draw and enable expanders and indent child rows in
\code{tree.view}.  When disabled there will be no expanders visible in trees
and there will be no way to expand and collapse rows by default.  Also
note that hiding the expanders will disable the default indentation.  You
can set a custom indentation in this case using
\code{\link{gtkTreeViewSetLevelIndentation}}.
This does not have any visible effects for lists.}
\usage{gtkTreeViewSetShowExpanders(object, enabled)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{enabled}}{\code{TRUE} to enable expander drawing, \code{FALSE} otherwise.}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

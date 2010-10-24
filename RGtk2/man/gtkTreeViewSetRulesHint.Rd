\alias{gtkTreeViewSetRulesHint}
\name{gtkTreeViewSetRulesHint}
\title{gtkTreeViewSetRulesHint}
\description{This function tells GTK+ that the user interface for your
application requires users to read across tree rows and associate
cells with one another. By default, GTK+ will then render the tree
with alternating row colors. Do \emph{not} use it
just because you prefer the appearance of the ruled tree; that's a
question for the theme. Some themes will draw tree rows in
alternating colors even when rules are turned off, and users who
prefer that appearance all the time can choose those themes. You
should call this function only as a \emph{semantic}
hint to the theme engine that your tree makes alternating colors
useful from a functional standpoint (since it has lots of columns,
generally).}
\usage{gtkTreeViewSetRulesHint(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{setting}}{\code{TRUE} if the tree requires reading across rows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

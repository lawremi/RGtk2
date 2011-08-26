\alias{gtkComboBoxGetActive}
\name{gtkComboBoxGetActive}
\title{gtkComboBoxGetActive}
\description{Returns the index of the currently active item, or -1 if there's no
active item. If the model is a non-flat treemodel, and the active item 
is not an immediate child of the root of the tree, this function returns 
\code{gtk_tree_path_get_indices (path)[0]}, where 
\code{path} is the \code{\link{GtkTreePath}} of the active item.}
\usage{gtkComboBoxGetActive(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkComboBox}}}}
\details{Since 2.4}
\value{[integer] An integer which is the index of the currently active item,
or -1 if there's no active item.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

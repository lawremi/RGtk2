\alias{gtkComboBoxSetModel}
\name{gtkComboBoxSetModel}
\title{gtkComboBoxSetModel}
\description{Sets the model used by \code{combo.box} to be \code{model}. Will unset a previously set 
model (if applicable). If model is \code{NULL}, then it will unset the model.}
\usage{gtkComboBoxSetModel(object, model = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkComboBox}}]  A \code{\link{GtkComboBox}}}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}}
}
\details{Note that this function does not clear the cell renderers, you have to 
call \code{\link{gtkCellLayoutClear}} yourself if you need to set up different 
cell renderers for the new model.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

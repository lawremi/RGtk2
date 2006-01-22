\alias{GtkCellView}
\alias{gtkCellView}
\name{GtkCellView}
\title{GtkCellView}
\description{A widget displaying a single row of a GtkTreeModel}
\usage{gtkCellView(show = TRUE)}
\section{Methods and Functions}{
\link{gtkCellViewNew}(show = TRUE)
\link{gtkCellViewNewWithText}(text)
\link{gtkCellViewNewWithMarkup}(markup)
\link{gtkCellViewNewWithPixbuf}(pixbuf)
\link{gtkCellViewSetModel}(object, model = NULL)
\link{gtkCellViewSetDisplayedRow}(object, path = NULL)
\link{gtkCellViewGetDisplayedRow}(object)
\link{gtkCellViewGetSizeOfRow}(object, path)
\link{gtkCellViewSetBackgroundColor}(object, color)
\link{gtkCellViewGetCellRenderers}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----GtkCellView}}
\section{Interfaces}{GtkCellView implements
 AtkImplementorIface and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \code{\link{GtkCellView}} displays a single row of a \code{\link{GtkTreeModel}}, using
cell renderers just like \code{\link{GtkTreeView}}. \code{\link{GtkCellView}} doesn't support
some of the more complex features of \code{\link{GtkTreeView}}, like cell editing
and drag and drop.}
\section{Structures}{\describe{\item{\code{GtkCellView}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkCellView} is the equivalent of \code{\link{gtkCellViewNew}}.}
\section{Properties}{\describe{
\item{\code{background} [character : Write]}{

Background color as a string.  Default value: NULL

}
\item{\code{background-gdk} [\code{\link{GdkColor}} : Read / Write]}{

Background color as a GdkColor.

}
\item{\code{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

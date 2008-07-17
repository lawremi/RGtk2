\alias{GtkCellView}
\alias{gtkCellView}
\name{GtkCellView}
\title{GtkCellView}
\description{A widget displaying a single row of a GtkTreeModel}
\section{Methods and Functions}{
\code{\link{gtkCellViewNew}(show = TRUE)}\cr
\code{\link{gtkCellViewNewWithText}(text)}\cr
\code{\link{gtkCellViewNewWithMarkup}(markup)}\cr
\code{\link{gtkCellViewNewWithPixbuf}(pixbuf)}\cr
\code{\link{gtkCellViewSetModel}(object, model = NULL)}\cr
\code{\link{gtkCellViewSetDisplayedRow}(object, path = NULL)}\cr
\code{\link{gtkCellViewGetDisplayedRow}(object)}\cr
\code{\link{gtkCellViewGetSizeOfRow}(object, path)}\cr
\code{\link{gtkCellViewSetBackgroundColor}(object, color)}\cr
\code{\link{gtkCellViewGetCellRenderers}(object)}\cr
\code{gtkCellView(show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkCellView}}
\section{Interfaces}{GtkCellView implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \code{\link{GtkCellView}} displays a single row of a \code{\link{GtkTreeModel}}, using
cell renderers just like \code{\link{GtkTreeView}}. \code{\link{GtkCellView}} doesn't support
some of the more complex features of \code{\link{GtkTreeView}}, like cell editing
and drag and drop.}
\section{Structures}{\describe{\item{\code{GtkCellView}}{
\emph{undocumented
}

}}}
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
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model for cell view
  
since 2.10  

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

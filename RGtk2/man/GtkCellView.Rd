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
\code{\link{gtkCellViewGetModel}(object)}\cr
\code{\link{gtkCellViewSetDisplayedRow}(object, path = NULL)}\cr
\code{\link{gtkCellViewGetDisplayedRow}(object)}\cr
\code{\link{gtkCellViewGetSizeOfRow}(object, path)}\cr
\code{\link{gtkCellViewSetBackgroundColor}(object, color)}\cr
\code{\link{gtkCellViewGetCellRenderers}(object)}\cr
\code{\link{gtkCellViewGetCellRenderers}(object)}\cr
\code{gtkCellView(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkCellView}}
\section{Interfaces}{GtkCellView implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \code{\link{GtkCellView}} displays a single row of a \code{\link{GtkTreeModel}}, using
cell renderers just like \code{\link{GtkTreeView}}. \code{\link{GtkCellView}} doesn't support
some of the more complex features of \code{\link{GtkTreeView}}, like cell editing
and drag and drop.}
\section{Structures}{\describe{\item{\verb{GtkCellView}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellView} is the equivalent of \code{\link{gtkCellViewNew}}.}
\section{Properties}{\describe{
\item{\verb{background} [character : *                : Write]}{

Background color as a string.  Default value: NULL

}
\item{\verb{background-gdk} [\code{\link{GdkColor}} : *             : Read / Write]}{

Background color as a GdkColor.

}
\item{\verb{background-set} [logical : Read / Write]}{

Whether this tag affects the background color.  Default value: FALSE

}
\item{\verb{model} [\code{\link{GtkTreeModel}} : *         : Read / Write]}{

The model for cell view
  
since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

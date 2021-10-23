\alias{GtkCellRendererPixbuf}
\alias{gtkCellRendererPixbuf}
\name{GtkCellRendererPixbuf}
\title{GtkCellRendererPixbuf}
\description{Renders a pixbuf in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererPixbufNew}()}\cr
\code{gtkCellRendererPixbuf()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererPixbuf}}
\section{Detailed Description}{A \code{\link{GtkCellRendererPixbuf}} can be used to render an image in a cell. It allows to render
either a given \code{\link{GdkPixbuf}} (set via the
pixbuf property) or a stock icon
(set via the stock-id property).
  
To support the tree view, \code{\link{GtkCellRendererPixbuf}} also supports rendering two alternative
pixbufs, when the is-expander property
is \code{TRUE}. If the is-expanded property
is \code{TRUE} and the
pixbuf-expander-open
property is set to a pixbuf, it renders that pixbuf, if the
is-expanded property is \code{FALSE} and
the
pixbuf-expander-closed
property is set to a pixbuf, it renders that one.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererPixbuf}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererPixbuf} is the equivalent of \code{\link{gtkCellRendererPixbufNew}}.}
\section{Properties}{\describe{
\item{\verb{follow-state} [logical : Read / Write]}{

Specifies whether the rendered pixbuf should be colorized
according to the \code{\link{GtkCellRendererState}}.
  Default value: FALSE  Since 2.8

}
\item{\verb{gicon} [\code{\link{GIcon}} : *                : Read / Write]}{

The GIcon representing the icon to display.
If the icon theme is changed, the image will be updated
automatically.
  Since 2.14

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the themed icon to display.
This property only has an effect if not overridden by "stock_id"
or "pixbuf" properties.
  Default value: NULL  Since 2.8

}
\item{\verb{pixbuf} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

The pixbuf to render.

}
\item{\verb{pixbuf-expander-closed} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

Pixbuf for closed expander.

}
\item{\verb{pixbuf-expander-open} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

Pixbuf for open expander.

}
\item{\verb{stock-detail} [character : *                : Read / Write]}{

Render detail to pass to the theme engine.  Default value: NULL

}
\item{\verb{stock-id} [character : *                : Read / Write]}{

The stock ID of the stock icon to render.  Default value: NULL

}
\item{\verb{stock-size} [numeric : Read / Write]}{

The GtkIconSize value that specifies the size of the rendered icon.  Default value: 1

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererPixbuf.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

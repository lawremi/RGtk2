\alias{GtkCellRendererProgress}
\alias{gtkCellRendererProgress}
\name{GtkCellRendererProgress}
\title{GtkCellRendererProgress}
\description{Renders numbers as progress bars}
\section{Methods and Functions}{
\code{\link{gtkCellRendererProgressNew}()}\cr
\code{gtkCellRendererProgress()}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkCellRenderer}
               +----GtkCellRendererProgress}}
\section{Structures}{\describe{\item{\code{GtkCellRendererProgress}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkCellRendererProgress} is the equivalent of \code{\link{gtkCellRendererProgressNew}}.}
\section{Properties}{\describe{
\item{\code{text} [character : Read / Write]}{

The "text" property determines the label which will be drawn
over the progress bar. Setting this property to \code{NULL} causes the default 
label to be displayed. Setting this property to an empty string causes 
no label to be displayed.  

  Default value: NULL  Since  2.6

}
\item{\code{value} [integer : Read / Write]}{

The "value" property determines the percentage to which the
progress bar will be "filled in".  

  Allowed values: [0,100]  Default value: 0  Since  2.6

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererProgress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

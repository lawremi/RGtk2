\alias{gtkRcGetStyleByPaths}
\name{gtkRcGetStyleByPaths}
\title{gtkRcGetStyleByPaths}
\description{Creates up a \code{\link{GtkStyle}} from styles defined in a RC file by providing
the raw components used in matching. This function may be useful
when creating pseudo-widgets that should be themed like widgets but
don't actually have corresponding GTK+ widgets. An example of this
would be items inside a GNOME canvas widget.}
\usage{gtkRcGetStyleByPaths(settings, widget.path, class.path, type)}
\arguments{
\item{\code{settings}}{[\code{\link{GtkSettings}}]  a \code{\link{GtkSettings}} object}
\item{\code{widget.path}}{[char]  the widget path to use when looking up the style, or \code{NULL}
              if no matching against the widget path should be done}
\item{\code{class.path}}{[char]  the class path to use when looking up the style, or \code{NULL}
              if no matching against the class path should be done.}
\item{\code{type}}{[\code{\link{GType}}]  a type that will be used along with parent types of this type
       when matching against class styles, or \code{G_TYPE_NONE}}
}
\details{The action of \code{\link{gtkRcGetStyle}} is similar to:
\preformatted{ gtk_widget_path (widget, NULL, &path, NULL);
 gtk_widget_class_path (widget, NULL, &class_path, NULL);
 gtk_rc_get_style_by_paths (gtk_widget_get_settings (widget), path, class_path,
                            G_OBJECT_TYPE (widget));
}  }
\value{[\code{\link{GtkStyle}}]  A style created by matching with the supplied paths,
  or \code{NULL} if nothing matching was specified and the default style should
  be used.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

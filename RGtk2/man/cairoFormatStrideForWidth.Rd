\alias{cairoFormatStrideForWidth}
\name{cairoFormatStrideForWidth}
\title{cairoFormatStrideForWidth}
\description{This function provides a stride value that will respect all
alignment requirements of the accelerated image-rendering code
within cairo. Typical usage will be of the form:}
\usage{cairoFormatStrideForWidth(format, width)}
\arguments{
\item{\code{format}}{[\code{\link{CairoFormat}}]  A \code{\link{CairoFormat}} value}
\item{\code{width}}{[integer]  The desired width of an image surface to be created.}
}
\details{\preformatted{int stride;
unsigned char *data;
  \link{CairoSurface}   *surface;

stride = cairo_format_stride_for_width (format, width);
data = malloc (stride * height);
surface = cairo_image_surface_create_for_data (data, format,
					  width, height);
}  

  Since  1.6}
\value{[integer]  the appropriate stride to use given the desired
format and width.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

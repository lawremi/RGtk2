\alias{gdkPixbufSave}
\name{gdkPixbufSave}
\title{gdkPixbufSave}
\description{Saves pixbuf to a file in format \code{type}. By default, "jpeg", "png", "ico" 
and "bmp" are possible file formats to save in, but more formats may be
installed. The list of all writable formats can be determined in the 
following way:}
\usage{gdkPixbufSave(object, filename, type, ..., .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}.}
\item{\code{filename}}{[char]  name of file to save.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{...}}{ list of key-value save options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{\preformatted{
formats <- gdkPixbufGetFormats()
writeable_formats <- formats[sapply(formats, gdkPixbufFormatIsWritable)]
}
  
If \code{error} is set, \code{FALSE} will be returned. Possible errors include 
those in the \code{GDK_PIXBUF_ERROR} domain and those in the \code{G_FILE_ERROR} domain.
  
The variable argument list should be \code{NULL}-terminated; if not empty,
it should contain pairs of strings that modify the save
parameters. For example:
\preformatted{
# (R does not require vararg lists)
pixbuf$save(handle, "jpeg", "quality", "100") 
}
  
Currently only few parameters exist. JPEG images can be saved with a
"quality" parameter; its value should be in the range [0,100].
  
Text chunks can be attached to PNG images by specifying parameters of
the form "tEXt::key", where key is an ASCII string of length 1-79.
The values are UTF-8 encoded strings. The PNG compression level can
be specified using the "compression" parameter; it's value is in an
integer in the range of [0,9].
  
ICO images can be saved in depth 16, 24, or 32, by using the "depth"
parameter. When the ICO saver is given "x_hot" and "y_hot" parameters,
it produces a CUR instead of an ICO.  }
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\code{error}}{[\code{\link{GError}}]  return location for error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

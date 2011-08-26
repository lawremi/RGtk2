\alias{gdkCursorNewFromPixmap}
\name{gdkCursorNewFromPixmap}
\title{gdkCursorNewFromPixmap}
\description{Creates a new cursor from a given pixmap and mask. Both the pixmap and mask
must have a depth of 1 (i.e. each pixel has only 2 values - on or off).
The standard cursor size is 16 by 16 pixels. You can create a bitmap 
from inline data as in the below example.}
\usage{gdkCursorNewFromPixmap(source, mask, fg, bg, x, y)}
\arguments{
\item{\verb{source}}{the pixmap specifying the cursor.}
\item{\verb{mask}}{the pixmap specifying the mask, which must be the same size as
\code{source}.}
\item{\verb{fg}}{the foreground color, used for the bits in the source which are 1.
The color does not have to be allocated first.}
\item{\verb{bg}}{the background color, used for the bits in the source which are 0.
The color does not have to be allocated first.}
\item{\verb{x}}{the horizontal offset of the 'hotspot' of the cursor.}
\item{\verb{y}}{the vertical offset of the 'hotspot' of the cursor.}
}
\details{ \emph{Creating a custom cursor}
\preformatted{
######
# Creating a custom cursor
######

## This data is in X bitmap format, and can be created with the 'bitmap'
## utility in X11
cursor1_width <- 16
cursor1_height <- 16
cursor1_bits <- c(0x80, 0x01, 0x40, 0x02, 0x20, 0x04, 0x10, 0x08, 0x08, 0x10,
                  0x04, 0x20, 0x82, 0x41, 0x41, 0x82, 0x41, 0x82, 0x82, 0x41,
                  0x04, 0x20, 0x08, 0x10, 0x10, 0x08, 0x20, 0x04, 0x40, 0x02,
                  0x80, 0x01)
 
cursor1mask_bits <- c(0x80, 0x01, 0xc0, 0x03, 0x60, 0x06, 0x30, 0x0c, 0x18,
                      0x18, 0x8c, 0x31, 0xc6, 0x63, 0x63, 0xc6, 0x63, 0xc6,
                      0xc6, 0x63, 0x8c, 0x31, 0x18, 0x18, 0x30, 0x0c, 0x60,
                      0x06, 0xc0, 0x03, 0x80, 0x01)
 
fg <- c(65535, 0, 0) # Red.
bg <- c(0, 0, 65535) # Blue.
 
 
source <- gdkBitmapCreateFromData(NULL, cursor1_bits,
                                  cursor1_width, cursor1_height)
mask <- gdkBitmapCreateFromData(NULL, cursor1mask_bits,
                                cursor1_width, cursor1_height)
cursor <- gdkCursorNewFromPixmap(source, mask, fg, bg, 8, 8)

widget[["window"]]$setCursor(cursor)
}}
\value{[\code{\link{GdkCursor}}] a new \code{\link{GdkCursor}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}

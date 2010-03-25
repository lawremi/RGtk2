\name{showGtkWidgetInfo}
\alias{showGtkWidgetInfo}
\title{
 A GUI to show information about a Gtk object
}
\description{
 A GUI to show information about a Gtk object in the global workspace. Enter in the name of the object in
 the text entry box on the upper right. If this is a valid object, the first three notebook tabs will update to show 
 properties for the widget; any signals that are added to this class of the widget, inherited signals are not shown; and any methods that are added for this class. To browse all available methods for a widget, the fourth tab allows you to type in a method name. If there is a match, a help page is opened.
}
\usage{
showGtkWidgetInfo()
}
%- maybe also 'usage' for other objects documented here.
\details{
	The RGtk2 method \code{getPropInfo}, function \code{gtkTypeGetSignals}, and some heuritics are used to find the information.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
  ## showGtkWidgetInfo()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ utilities }

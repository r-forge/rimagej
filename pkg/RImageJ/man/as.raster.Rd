\name{as.raster.jobjRef}
\alias{as.raster.jobjRef}
\title{
Support for converting ImageJ images to raster images
}
\description{
Support for converting ImageJ images to raster images
}
\usage{
\S3method{as.raster}{jobjRef}(x, ...)
}
\arguments{
\item{x}{A java reference of class \samp{ij.ImagePlus} }
\item{...}{not used}
}
\value{
A raster object. See \link[grDevices]{as.raster}
}
\author{
Contributed by Paul Murrell \url{http://www.stat.auckland.ac.nz/~paul/}
}
\seealso{
\link[grDevices]{as.raster}, \link[graphics]{raster}
}
\examples{
\dontrun{
logo <- system.file( "images", "R.jpg", package = "RImageJ" )
image = IJ$openImage( logo )
plot(c(100, 250), c(300, 450), type = "n", xlab="", ylab="")
raster(image, 100, 300, 150, 350, interpolate=FALSE)
raster(image, 100, 400, 150, 450)
raster(image, 200, 300, 200 + xinch(.5), 300 + yinch(.3),
       interpolate=FALSE)
raster(image, 200, 400, 250, 450, angle=15, interpolate=FALSE)
}
}
\keyword{ graphics}

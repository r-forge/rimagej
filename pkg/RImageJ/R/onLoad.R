.onLoad <- function (libname, pkgname) {
	if (substring(R.Version()$os, 1, 6) == "darwin") {
		# There is a problem starting Java with AWT on Mac OS X (Snow) Leopard
		# This tries to correct it!
		options(java.parameters = paste(getOption("java.parameters"),
			"-Djava.awt.headless=true"))
	}
	.jpackage(pkgname)
	cat("ImageJ version: ", IJ$getVersion(), "\n", sep = "")
}

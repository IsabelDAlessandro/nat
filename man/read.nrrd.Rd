% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nrrd-io.R
\name{read.nrrd}
\alias{read.nrrd}
\alias{read.nrrd.header}
\alias{nrrd.datafiles}
\title{Read NRRD files/headers into memory}
\usage{
read.nrrd(
  file,
  origin = NULL,
  ReadData = TRUE,
  AttachFullHeader = TRUE,
  Verbose = FALSE,
  ReadByteAsRaw = c("unsigned", "all", "none")
)

read.nrrd.header(file, Verbose = FALSE)

nrrd.datafiles(file, full.names = TRUE)
}
\arguments{
\item{file}{Path to a nrrd (or a connection for \code{read.nrrd.header})}

\item{origin}{Add a user specified origin (x,y,z) to the returned object}

\item{ReadData}{When FALSE just return attributes (i.e. the nrrd header)}

\item{AttachFullHeader}{Include the full nrrd header as an attribute of the
returned object (default TRUE)}

\item{Verbose}{Status messages while reading}

\item{ReadByteAsRaw}{Either a character vector or a logical vector specifying
when R should read 8 bit data as an R \code{raw} vector rather than
\code{integer} vector.}

\item{full.names}{Whether to return the full paths to each data file (by
analogy with \code{\link{list.files}})}
}
\value{
An \code{array} object, optionally with attributes from the nrrd
  header.

A list with elements for the key nrrd header fields
}
\description{
\code{read.nrrd} reads data into a raw array. If you wish to
  generate a \code{\link{im3d}} object that includes spatial calibration (but
  is limited to representing 3D data) then you should use
  \code{\link{read.im3d}}.

\code{nrrd.datafiles} returns the path to the separate data
  files listed in a detached NRRD header file.
}
\details{
\code{ReadByteAsRaw="unsigned"} (the default) only reads unsigned
  byte data as a raw array. This saves quite a bit of space and still allows
  data to be used for logical indexing.
}
\seealso{
\code{\link{write.nrrd}}, \code{\link{read.im3d}}

Other nrrd: 
\code{\link{is.nrrd}()},
\code{\link{nrrd.voxdims}()},
\code{\link{write.nrrd}()}
}
\concept{nrrd}

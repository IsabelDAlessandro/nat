% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interactive.R
\name{prune_online}
\alias{prune_online}
\alias{prune_online.neuron}
\alias{prune_online.neuronlist}
\title{Prune a neuron interactively in an rgl window}
\usage{
prune_online(x, ...)

\method{prune_online}{neuron}(x, ...)

\method{prune_online}{neuronlist}(x, ...)
}
\arguments{
\item{x}{The object to prune. (e.g. \code{dotprops} object, see details)}

\item{...}{Additional methods passed to \code{prune_vertices}}
}
\value{
A pruned neuron/neuronlist object
}
\description{
Remove points from a neuron, keeping the root node intact.
}
\details{
The neuron is plotted initially with all nodes selected (and shown
  with black points). You can interactively select points to remove (they
  will now be plotted in red). You can also add points back again (they will
  return to black). When you are finished, press [e] to exit and then indicate
  that you have finished (yes).
}
\examples{
\dontrun{
## Interactively choose which bit of the neuron you wish to keep
pruned.as.you.like.it = prune_online(Cell07PNs[1:2])
}
}
\seealso{
\code{\link{as.neuron.ngraph}}, \code{\link{subset.neuron}},
  \code{\link{prune.neuron}}
}

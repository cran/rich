\name{rarc}
\Rdversion{0.1}
\alias{rarc}
\title{Computes rarefaction curves}
\description{c computes rarefaction curves and returns a data frame with bootstrap estimates of species richness and average number of individuals for a given sample size.}
\usage{
rarc(matrix, samplesize=NULL, nrandom=99)
}
\arguments{
\item{matrix}{\code{matrix} is a typical species-sample matrix. Rows correspond to samples whereas columns stand for species.}
\item{samplesize}{A vector containing the different sample sizes for which the computations are required. If missing or non vector, \code{samplesize} is replaced by a sequence from 1 to the maximum possible sample size given the size of \code{matrix}.
}
\item{nrandom}{\code{nrandom} is the number of a randomizations used in the bootstrap estimation. Values of \code{nrandom} <10 or NULL are set to 99.}
}
\details{
\code{rarc} performs bootstrap that is resampling with replacement. This strategy was choosen because the variance among randomizations remains meaningful even at the right-hand of the accumulation curve. This condition is necessary, for example when one aims at comparing species richnesses.
}

\value{A data frame giving the bootstrap estimate of the richness, number of individuals associated to different number of sampling units.
}
\author{
Jean-Pierre Rossi \email{jean-pierre.rossi@supagro.inra.fr}
}
\seealso{
\code{\link{raref}, \link{raref2}, \link{rich}}}
\examples{
data(ef)
rarc(ef,samplesize=c(5,10,20), nrandom=49)
}
\keyword{ rarefaction curve }
\keyword{ species richness }

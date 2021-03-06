\name{simul.pedigree}
\alias{simul.pedigree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simulation of pedigree structure
}
\description{
This function can be used to simulate a pedigree for a given number of generations and individuals. Function assumes random mating within generations. Inbred individuals may be generated by chance.
}
\usage{
simul.pedigree(generations = 2, ids = 4, animals=FALSE,familySize=1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{generations}{
\code{integer}. Number of generations to simulate
}
  \item{ids}{
\code{integer} or vector of integers. Number of genotypes in each generation. If length equal one, the same number will be replicated and used for each generation.
}
  \item{animals}{
\code{logical}. Should a pedigree for animals be simulated (no inbreeding)? See 'Details'.
}  
  \item{familySize}{
\code{numeric}. Number of individuals in each full-sib family in the last generation.
}  
}
\details{                                
If \code{animals=FALSE}, the parents for the current generation will be randomly chosen out of the genotypes in the last generation. If Par1 = Par2, an inbreed is generated. If \code{animal=TRUE}, each  ID is either sire or dam. Each ID is progeny of one sire and one dam.
}
\value{
An object of class \code{pedigree} with N=sum(ids) genotypes.
}
\author{
Valentin Wimmer
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{simul.phenotype}}, \code{\link{create.pedigree}}, \code{\link{plot.pedigree}}
}
\examples{
# example for plants
ped <- simul.pedigree(gener=4,ids=c(3,5,8,8))
plot(ped)
#example for animals
peda <- simul.pedigree(gener=4,ids=c(3,5,8,8),animals=TRUE)
plot(peda)
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsnca_stat.R
\name{gsnca_stat}
\alias{gsnca_stat}
\title{Test statistics of Gene Sets Net Correlation Analysis (GSNCA)}
\usage{
gsnca_stat(objt1, objt2, cor.method = "pearson")
}
\arguments{
\item{objt1}{dataset for condition 1, genes in columns}

\item{objt2}{dataset for condition 2, genes in columns}

\item{cor.method}{correlation coefficient method, the same as in function cor}
}
\value{
L1-norm distance between two weight vectors
}
\description{
Derive distance statistics by solving eigenvector of two pairise correaltion matrix.
}
\examples{
data(meta)
BRCA <- datasets[['BRCA']]
N <- ncol(BRCA)
n1 <- floor(N/2)
objt1 <- t(BRCA[1:min(66,nrow(BRCA)),1:n1])
objt2 <- t(BRCA[1:min(66,nrow(BRCA)),(n1+1):N])
gStat.res <- gsnca_stat(objt1,objt2)

}
\seealso{
[gsnca_p()] for the external function that calls on the current function and returns permutation p-statistic.
}

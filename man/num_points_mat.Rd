% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{num_points_mat}
\alias{num_points_mat}
\title{Calculates number of bonds that mature in each qgrid}
\usage{
num_points_mat(data, ugrid, hu, qgrid, hq, rgrid, hr, interest, units = 365)
}
\arguments{
\item{data}{A data frame; bond data to estimate discount curve from.}

\item{ugrid}{A single value for ugrid between 0 and 1}

\item{hu}{A single value for the bandwidth of the ugrid value}

\item{qgrid}{A numeric vector of the time-to-maturity grid
for the discount function at the corresponding time.}

\item{hq}{A numeric vector matching qgrid, bandwidth parameter determining the size of the window
that corresponds to each time-to-maturity.}

\item{rgrid}{Optional, a single value for rgrid}

\item{hr}{Optional, A single value for the bandwidth of the rgrid value for use with rgrid}

\item{interest}{Optional, A vector of daily interest rates for use with rgrid}
}
\description{
Calculates number of bonds that mature in each qgrid
}
\author{
Bonsoo Koo, Kai-Yang Goh and Nathaniel Tomasetti
}
\keyword{internal}

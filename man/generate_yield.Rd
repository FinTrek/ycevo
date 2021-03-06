% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{generate_yield}
\alias{generate_yield}
\title{Generate a yield curve with cubic time evolution}
\usage{
generate_yield(
  max_qDate = 12,
  periods = 36,
  b0 = 0,
  b1 = 0.05,
  b2 = 2,
  t1 = 3,
  t2 = 500,
  linear = -0.55,
  quadratic = 0.55,
  cubic = -0.55
)
}
\arguments{
\item{max_qDate}{An integer giving the number of quotation dates to use in the data. Defaults to 12.}

\item{periods}{An integer giving the maximum number of time to maturity periods the yield curve is estimated for each quotation date. Defaults to 36}

\item{b0}{First term in yield curve equation, Defaults to 0}

\item{b1}{Second term in yield curve equation, Defaults to 0.05}

\item{b2}{Third term in yield curve equation, Defaults to 2}

\item{t1}{Fourth term in yield curve equation, Defaults to 3}

\item{t2}{Fifth term in yield curve equation, Defaults to 500}

\item{linear}{Linear term in yield curve evolution, Defaults to -0.55}

\item{quadratic}{Quadratic term in yield curve evolution. Defaults to 0.55}

\item{cubic}{Cubic term in yield curve evolution. Defaults to -0.55}
}
\value{
Matrix. See \code{Details}.
}
\description{
Generate a yield curve with cubic time evolution
}
\details{
Returns a matrix where each column corresponds to a yield curve at a different point in time.
The initial curve at time to maturity zero is estimated from the following equation
\deqn{Yield_{i, 0} = b_0 + b_1 * ((1 - \exp(-\tau_i / t_1)) / (\tau / t_1)) + b_2 * ((1 - \exp(-\tau_i / t_2)) / (\tau_i / t2) - \exp(-\tau_i / t_2))}
where \eqn{\tau_i} is the index of the time to maturity period. This defines the yield curve for the quotation date = 0
The yield curve for quotation dates = 1, 2, ... , max_q_date multiplies this curve by the cubic equation,
\deqn{Yield_{i, t} = Yield_{i, 0} * (1 + linear * t + quadratic * t^2 + cubic * t^3)}
so the yield curve slowly changes over different quotation dates.
}
\examples{
out <- generate_yield()
}

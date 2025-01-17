% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/track.R
\name{bind_tracks}
\alias{bind_tracks}
\title{Bind Multiple Track Tables by Row}
\usage{
bind_tracks(...)
}
\arguments{
\item{...}{Track tables to combine. Each argument can either be a track table
or a list of track tables. The track tables must have the same projection.}
}
\value{
A track table.
}
\description{
{bind_tracks} uses \code{\link[data.table:rbindlist]{data.table::rbindlist}}
 to combine track tables by rows, but makes sure that you cannot bind together
 two tables with different projections, that the projection attribute is
 inherited by the resulting track table, and that track tables based on
 different table classes are coerced to the same table class.
}
\examples{
data(short_tracks)

bind_tracks(short_tracks, short_tracks)
bind_tracks(list(short_tracks, short_tracks))

}
\author{
Simon Garnier, \email{garnier@njit.edu}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{BigwigTrack}
\alias{BigwigTrack}
\title{Plot data from BigWig}
\usage{
BigwigTrack(
  region,
  bigwig,
  smooth = 200,
  type = "coverage",
  y_label = "Score",
  max.downsample = 3000,
  downsample.rate = 0.1
)
}
\arguments{
\item{region}{GRanges object specifying region to plot}

\item{bigwig}{Path to a bigwig file}

\item{smooth}{Number of bases to smooth data over (rolling mean). If NULL,
do not apply smoothing.}

\item{type}{Plot type. Can be one of "line", "heatmap", or "coverage"}

\item{y_label}{Y-axis label}

\item{max.downsample}{Minimum number of positions kept when downsampling.
Downsampling rate is adaptive to the window size, but this parameter will set
the minimum possible number of positions to include so that plots do not
become too sparse when the window size is small.}

\item{downsample.rate}{Fraction of positions to retain when downsampling.
Retaining more positions can give a higher-resolution plot but can make the
number of points large, resulting in larger file sizes when saving the plot
and a longer period of time needed to draw the plot.}
}
\description{
Create a BigWig track. Note that this function does not work on windows.
}
\concept{visualization}

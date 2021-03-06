% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decorate_plot.r
\name{decorate_plot}
\alias{decorate_plot}
\title{Decorate Plot Function}
\usage{
decorate_plot(
  title = NULL,
  subtitle = "http://www.weirddatascience.net | @WeirdDataSci",
  footer = NULL,
  plot,
  bg_image = NULL,
  decorate_theme = NULL,
  rel_heights = c(0.1, 1, 0.05)
)
}
\arguments{
\item{title}{Title text for the plot.}

\item{subtitle}{Subtitle text for the plot.}

\item{footer}{Footer text, for references and acknowledgements.}

\item{plot}{ggplot plot object to centralize.}

\item{bg_image}{Path to a background image for the page. This will span the entire plot without borders.}

\item{rel_heights}{Array of relative heights for the title, plot, and footer sections. Defaults to c(0.1, 1, 0.05).}

\item{theme}{A theme object to use in constructing the titles and footer.}
}
\description{
Decorate a ggplot with title, subtitle, footer reference text and full-page background image.
This makes use of the cowplot package to strip apart the basic ggplot object and recombine it into a presentation-ready image.
}
\examples{
df <- data.frame( x=rnorm(100), y=rnorm(100) )
gp <- ggplot( df, aes(x=x, y=y) ) + geom_point()
dp <- decorate_plot( "Plot Title", "Weird Data Science", gp, "Data: Normal Distribution" )
}
\keyword{plot}

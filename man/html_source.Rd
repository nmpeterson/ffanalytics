% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_classes.R
\docType{class}
\name{html_source}
\alias{html_source}
\title{HTML source object}
\format{
An R6 class object.
}
\description{
This objects represent the basic set of data needed for defining a projection
source with HTML data. It is an extesnsion of the \link{projection_source}
object with some specific fields and methods related to scraping HTML data.
}
\note{
See \url{https://www.w3schools.com/cssref/css_selectors.asp} for details
on defining CSS selectors
}
\section{Methods}{

\describe{
  \item{\code{open_session}}{Takes \code{season, week, position} as input and
  and opens a session on the website via the \link{html_session} function after
  determining the URL}
  \item{\code{close_session}}{Closes the session that is currently open}
  \item{\code{get_table}}{Retrieves the table from the session without any
  spliltting of columns defined in \code{split_cols}, any recoding as defined
  in \code{recode_cols} or any renaming based on \code{stat_cols}}
  \item{\code{scrape}}{Scrapes data from the table specified and wrangles the
  columns based on \code{split_cols}, \code{recode_cols} and \code{stat_cols}}
}
}

\seealso{
Other source-class: 
\code{\link{json_source}},
\code{\link{projection_source}},
\code{\link{xlsx_source}}
}
\concept{source-class}
\keyword{internal}
\section{Super class}{
\code{\link[ffanalytics:projection_source]{ffanalytics::projection_source}} -> \code{html_source}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{table_css}}{A string with a CSS selector identifying the HTML
\code{<table>} element holding the projection data.}

\item{\code{pid_css}}{A string with a CSS selector idenfitying the HTML node holding
the player id if available}

\item{\code{rm_elem}}{A character vector of CSS selectors identifying HTML nodes to
remove for successful scraping of the table.}

\item{\code{index}}{If \code{table_css} does not uniquely identify the table, use this
field to identify the index number for the table in the list of nodes. If
multiple numbers are specified then the tables are ssume to have identical
number of rows and will be combined with \link{bind_cols}}

\item{\code{extract_pid}}{A function that will take the HTML node holding the player
id and extract the specific player_id}

\item{\code{split_cols}}{A list with each element being a list representing input to
either \link{separate} or \link{extract}. Each input element should be in the
format of a function of position to allow for different handling of fields for
different positions. See the \code{projection_sources} object for predefined
sources.}

\item{\code{recode_cols}}{a list with each element being a list representing names
of columns to be recoded and a named vector for each column holding the recode
values to be used by \link{recode}.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{html_source$new()}}
\item \href{#method-open_session}{\code{html_source$open_session()}}
\item \href{#method-close_session}{\code{html_source$close_session()}}
\item \href{#method-get_table}{\code{html_source$get_table()}}
\item \href{#method-scrape}{\code{html_source$scrape()}}
\item \href{#method-clone}{\code{html_source$clone()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="ffanalytics" data-topic="projection_source" data-id="get_url">}\href{../../ffanalytics/html/projection_source.html#method-get_url}{\code{ffanalytics::projection_source$get_url()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ffanalytics" data-topic="projection_source" data-id="name_cols">}\href{../../ffanalytics/html/projection_source.html#method-name_cols}{\code{ffanalytics::projection_source$name_cols()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ffanalytics" data-topic="projection_source" data-id="print">}\href{../../ffanalytics/html/projection_source.html#method-print}{\code{ffanalytics::projection_source$print()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ffanalytics" data-topic="projection_source" data-id="set_id">}\href{../../ffanalytics/html/projection_source.html#method-set_id}{\code{ffanalytics::projection_source$set_id()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$new(
  id_col = NULL,
  base = NULL,
  league_id = NULL,
  api_key = NULL,
  get_query = NULL,
  get_path = NULL,
  url_positions = NULL,
  min_week = 0,
  max_week = NULL,
  season_pos = NULL,
  week_pos = NULL,
  table_css = NULL,
  pid_css = NULL,
  rm_elem = NULL,
  index = NULL,
  extract_pid = NULL,
  split_cols = list(),
  stat_cols = NULL,
  recode_cols = list()
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-open_session"></a>}}
\if{latex}{\out{\hypertarget{method-open_session}{}}}
\subsection{Method \code{open_session()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$open_session(season, week = NULL, position, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-close_session"></a>}}
\if{latex}{\out{\hypertarget{method-close_session}{}}}
\subsection{Method \code{close_session()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$close_session()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_table"></a>}}
\if{latex}{\out{\hypertarget{method-get_table}{}}}
\subsection{Method \code{get_table()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$get_table()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-scrape"></a>}}
\if{latex}{\out{\hypertarget{method-scrape}{}}}
\subsection{Method \code{scrape()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$scrape()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{html_source$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}

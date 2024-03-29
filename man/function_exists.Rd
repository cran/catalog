% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{function_exists}
\alias{function_exists}
\title{Check If A Function Exists}
\usage{
function_exists(sc, fn, database = NULL)
}
\arguments{
\item{sc}{A \code{spark_connection}.}

\item{fn}{\code{character(1)}. The name of the function.}

\item{database}{\code{character(1)}. The name of the database for which the
functions should be listed (default: \code{NULL}).}
}
\value{
A \code{logical(1)} vector indicating \code{TRUE} if the function exists within the
specified database and \code{FALSE} otherwise.
}
\description{
Check if the function with the specified name exists in the specified
database.
}
\details{
\code{function_exists()} includes in-built functions such as \code{abs}. To see if a
built-in function exists you must use the unqualified name. If you create a
function you can use the qualified name. If you want to check if a built-in
function exists specify the \code{database} as \code{NULL}.
}
\examples{
\dontrun{
sc <- sparklyr::spark_connect(master = "local")
function_exists(sc = sc, fn = "abs")
}

}

\name{answer_rating}
\alias{answer_rating}
\title{Rating qualitative answers for correctness}
\usage{
answer_rating(
  data, 
  name,
  export = TRUE)
}
\arguments{
\item{data}{a data frame with individual participants in rows and different measures in columns}
\item{name}{name of the column to specify the output file (optional)}
\item{export}{TRUE if a CSV file with the modified data should be exported, FALSE if not}
}
\examples{
answer_rating(data = data[2:55,], name = "Understanding", export = TRUE)
}

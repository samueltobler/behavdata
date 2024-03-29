\name{likert_transform}
\alias{likert_transform}
\title{Transferring Likert Scale Answers to Numbers}
\usage{
likert_transform(
  data, 
  type,
  name,
  lang,
  other,
  export = TRUE)
}
\description{
This function allows to directly transform any collected data in Likert Scale format to numerical values. The default function is built for Likert Scales in either German or English and with 5 points. However, using the other variable, it is possible to code for any kind of repetitive text inputs.
}
\arguments{
\item{data}{a data frame with individual participants in rows and different measures in columns.}
\item{type}{type of entered data: either data frame (default) or vector}
\item{name}{name of the analysis to specify the output file.}
\item{lang}{language of the Likert scale in case either the standard 5 point Likert scales are used.}
\item{other}{Alternative input values. See example below.}
\item{export}{TRUE if a CSV file with the modified data should be exported, FALSE if not.}
}
\examples{
# For a questionnaire in German
likert_transform(data = data, type = "dataframe", name = "Engagement", lang = "de", export = TRUE) 
# For various text fragments
likert_transform(data = data, type = "vector", name = "Engagement", other = c("yes", "no", "maybe"))
}

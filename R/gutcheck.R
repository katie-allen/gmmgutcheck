#' Good Mythical Morning gut check scores
#'
#' Gut check scores from various episodes of the YouTube series Good Mythical Morning. Episodes currently included are "We Tried EVERY Krispy Kreme Donut Flavor", "We Tried EVERY Hi-Chew Flavor", "We Try EVERY Hostess Cake Flavor", "We Tried EVERY Ben & Jerry's Ice Cream Flavor", and "We Tried EVERY Pop-Tarts Flavor".
#'
#' @format A tibble with 23 rows and 12 variables:
#' \describe{
#'   \item{episode}{Episode name.}
#'   \item{date}{Date the episode appeared on YouTube.} 
#'   \item{food}{The type of food that was featured in the episode.}
#'   \item{category}{The category of flavor.}
#'   \item{order}{The order in which flavors were tested.}
#'   \item{flavor}{The flavor that was tested.}
#'   \item{first_to_score}{Who was the first to score the flavor?.}
#'   \item{rhett_score}{Rhett's score for the flavor.}
#'   \item{link_score}{Link's score for the flavor.}
#'   \item{link_scoring_chart}{Did Link use a scoring chart in this episode?.}
#'   \item{total_score}{The sum of Rhett's score and Link's score.}
#'   \item{top_4}{The final flavor ranking chosen by Rhett and Link. If NA, flavor did not make it into the top 4.}
#' }
#' @source \url{https://www.youtube.com/@GoodMythicalMorning}
"gutcheck"
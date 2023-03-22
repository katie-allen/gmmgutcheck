# gmmgutcheck: Good Mythical Morning Gut Check Data

Rhett and Link's scores from "gut check" episodes of the YouTube series Good Mythical Morning. Episodes currently included are:

- We Tried EVERY Krispy Kreme Donut Flavor
- We Tried EVERY Hi-Chew Flavor
- We Try EVERY Hostess Cake Flavor
- We Tried EVERY Ben & Jerry's Ice Cream Flavor
- We Tried EVERY Pop-Tarts Flavor

You can download the `.csv` files from the [data-raw folder](https://github.com/katie-allen/gmmgutcheck/tree/main/data-raw). There is one file for each episode, as well as a master file `gutcheck.csv` that combines all episodes. You can also access the data by installing the `gmmgutcheck` R package.

```
install.packages("remotes")
remotes::install_github("katie-allen/gmmgutcheck")

data(package = "gmmgutcheck")
```

Each dataset contains 12 variables:

| column             | type | description                                                                                      |
|--------------------|------|--------------------------------------------------------------------------------------------------|
| episode            | chr  | Episode name.                                                                                    |
| date               | date | Date the episode appeared on YouTube.                                                            |
| food               | chr  | The type of food that was featured in the episode.                                               |
| category           | fct  | The category of flavor.                                                                          |
| order              | dbl  | The order in which flavors were tested.                                                          |
| flavor             | fct  | The flavor that was tested.                                                                      |
| first_to_score     | chr  | Who was the first to score the flavor?                                                           |
| rhett_score        | dbl  | Rhett's score for the flavor.                                                                    |
| link_score         | dbl  | Link's score for the flavor.                                                                     |
| link_scoring_chart | lgl  | Did Link use a scoring chart in this episode?                                                    |
| total_score        | dbl  | The sum of Rhett's score and Link's score.                                                       |
| top_4              | dbl  | The final flavor ranking chosen by Rhett and Link. If NA, flavor did not make it into the top 4. |

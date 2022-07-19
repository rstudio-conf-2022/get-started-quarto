---
format: html
engine: knitr
editor_options: 
  markdown: 
    wrap: 72
---

# Getting Started with Quarto

by Tom Mock

------------------------------------------------------------------------

🗓️ July 25 and 26, 2022\
⏰ 09:00 - 17:00\
🏨 **TODO ADD ROOM**\
✍️ [rstd.io/get-started-quarto](https://rstd.io/get-started-quarto)

------------------------------------------------------------------------

# Pre-Work

If you are a workshop attendee and have any trouble with installation locally, please reach out to me directly!

- Install latest version of RStudio, [`v2022.07.0-548` or later](https://www.rstudio.com/products/rstudio/download/#download)
- Install [latest version of Quarto](https://quarto.org/docs/get-started/) (`v1.0.32` or greater)
- Ideally upgrade to R 4.1 or R 4.2 (I'm showing base R pipe as `|>`)
- Install/Update `TinyTeX` for PDF with `quarto install tool tinytex`
- Install/Update Chromium with `quarto install tool chromium`
- Install R packages:

```{r pkg-list}
#| eval: false
pkg_list <- c(
  "tidyverse", "gt", "gtExtras", "reactable", "ggiraph", "here", "quarto",
  "rmarkdown", "gtsummary", "palmerpenguins", "fs", "skimr"
  )
install.packages(pkg_list)
```
:::{.callout-tip}

## Workshop Materials

On Sunday July 24th - clone this repo!
<https://github.com/rstudio-conf-2022/get-started-quarto>

:::

:::{.callout-caution collapse="true"}
## (Optional!) Pre-Work for Python

This will be a R/RStudio centric course based on the attendees, but we will briefly cover other editors and Python. You are not required to install Jupyter/Python/VScode, but if you'd like to test them out:

- Install Python, following instructions at [Minimum Viable Python](https://solutions.rstudio.com/python/minimum-viable-python/installing-python/)
- Install [Jupyter](https://quarto.org/docs/computations/python.html#installation)
- Install VSCode, [Quarto VSCode extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto), [Python VSCode extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python), [Jupyter VSCode extension](https://open-vsx.org/extension/ms-toolsai/jupyter)
:::

# Overview

This workshop is designed for those who have no or little prior
experience with R Markdown and who want to learn Quarto. Quarto is the
next generation of RMarkdown for publishing, including dynamic and
static documents and multi-lingual programming language support. With Quarto 
you can create documents, books, presentations, blogs or other
online resources. 

In this 2 day workshop you will learn about the Quarto
format for technical communication and computation. We'll teach you how
to get started creating and fully customizing Quarto outputs (HTML, PDF,
Presentations) and the use of RStudio's Visual Editor which provides a
user interface for editing all of Pandoc markdown. 

We will also provide
an overview of Quarto's developer tooling support in alternative tools
such as Jupyter, VS Code, and any text editors depending on learner interest. 

We will briefly cover how to generate robust tables/plots in Quarto. 
Lastly, we will cover Quarto Projects for aggregating many files such as 
complex web sites or entire books.

## Learning objectives

- Understand the difference between `knitr`, R Markdown, and Quarto
- Utilize RStudio, `knitr`, and Quarto to generate static documents, websites/blogs, and presentations
- Expand learner's toolkit regarding markdown, CSS, and Quarto-native layout options

> These materials are developed for a trainer-led workshop at rstudio::conf 2022, but should be useful for self-guided learning as well.

## Is this course for me?

This two-day workshop is primarily intended as a broad overview of
Quarto as the next generation of RMarkdown. You should take this
workshop if you have experience programming in R and want to learn how
to take advantage of Quarto for literate data science programming in
academia, science, and industry.

This workshop will be appropriate for attendees who answer yes to these
questions:

-   Have you programmed in R and want to better encapsulate your code,
    documentation, and outputs in a cohesive "data product"?

-   Do you want to learn about the next generation of RMarkdown for data
    science?

-   Do you want to have a better interactive experience when writing
    technical or scientific documents with literate programming?

## Prework

If you are a workshop attendee and have any trouble with installation locally, please reach out to me directly!

- Install latest version of RStudio, [`v2022.07.0-548` or later](https://www.rstudio.com/products/rstudio/download/#download)
- Install [latest version of Quarto](https://quarto.org/docs/get-started/) (`v1.0.32` or greater)
- Ideally upgrade to R 4.1 or R 4.2 (I'm showing base R pipe as `|>`)
- Install/Update `TinyTeX` for PDF with `quarto install tool tinytex`
- Install/Update Chromium with `quarto install tool chromium`
- Install R packages:

```{r pkg-list}
#| eval: false
```

:::{.callout-tip}

## Workshop Materials

On Sunday July 24th - clone/pull this repo (to get latest version)!
<https://github.com/rstudio-conf-2022/get-started-quarto>

:::

## Schedule

### Day 1

| Time          | Activity                                              |
|:--------------|:------------------------------------------------------|
| 09:00 - 10:30 | [Understanding magic with Quarto](../../materials/01-intro-quarto.html) |
| 10:30 - 11:00 | *Coffee break*                                        |
| 11:00 - 12:30 | [Authoring with Markdown and more](../../materials/02-authoring.html)  |
| 12:30 - 13:30 | *Lunch break*                                         |
| 13:30 - 15:00 | [Computation and Editors](../../materials/03-computation-editors.html)                                |
| 15:00 - 15:30 | *Coffee break*                                        |
| 15:30 - 17:00 | [Static reports and documents](../../materials/04-static-documents.html)                           |

### Day 2

| Time          | Activity                         |
|:--------------|:---------------------------------|
| 09:00 - 10:30 | [Presentations](../../materials/05-presentations.html)                     |
| 10:30 - 11:00 | *Coffee break*                   |
| 11:00 - 12:30 | [Websites](../../materials/06-websites.html)                          |
| 12:30 - 13:30 | *Lunch break*                    |
| 13:30 - 15:00 | [Advanced plots, tables, and more](../../materials/07-plots-tables.html)  |
| 15:00 - 15:30 | *Coffee break*                   |
| 15:30 - 16:00 | [Going further with Quarto + `knitr`](../../materials/08-advanced-knitr.html)  |
| 16:00 - 16:30 | Q/A with Quarto Dev team  |
| 16:30 - 17:00 | [Going further with Quarto + `knitr`](../../materials/08-advanced-knitr.html)  |

## Instructor

Tom Mock, PhD is the Customer Enablement Lead at RStudio, helping
RStudio's customers be as successful as possible. He is deeply involved
in the global data science community, sharing tips on `#RStats` Twitter
(find him at @thomas_mock), as co-founder of `#TidyTuesday`, a weekly
Data Science learning challenge, and presenting on various Data Science
topics on YouTube or at conferences.

------------------------------------------------------------------------

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is
licensed under a [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).

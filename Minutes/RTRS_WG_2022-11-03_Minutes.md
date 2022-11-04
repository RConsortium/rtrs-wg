## Minutes RTRS WG - 2022-11-03

The minutes were compiled by Joseph Rickert.

### Attendees
* Keaven Anderson
* Gabriel Becker
* Kevin Bolger - Procogia
* David Gohel-  Ardata
* Rich Iannone - RStudio
* Alexandra Lauer - Merck
* Mark Quinn - Pfizer
* Joseph Rickert - RStudio
* Leon Shi = Pfizer
* Adrian Waddell - Genentech
* Sheng-Wei Wang - J&J

The meeting was recorded and the [video](https://rstudio.zoom.us/rec/share/4VsDQe1CB0qlbisgd2EBCJRMTaR0yFBdAWAdROK3in3nXHVl9cRQP6ehncBXmc4P.9x3VIFFcOVwysjAR) is available.

JBR brought the meeting to order and set the agenda: summarize the work that has been done so far and establish some intermediate goals for the document which should include a rendered version of the document that would be easy to show people.

DG informed the group that he is almost finished developing the GitHub actions to accomplish rendering the book. This will result in a webpage for the book that is automatically updated.

JBR said that he would like to have R Consortium marketing promote the working group. This requires setting goals and having an idea of how we would like the community to become involved. 

GB reported that he has been interacting with Duncan Murdoch who is eager to be involve in the project and is updating his [`tables`](https://cran.r-project.org/package=tables) package which is a port of SAS's `PROC Tables`. Additionally, Duncan raised the issue of potential symbol conflict within the ebook. To avoid this the ebook is being restructure so that the packages for the tables referenced in the ebook are unattached after each use. This forces subsequent code to include the `library()` function which also has the benefit of improving clarity.

GB suggested that the email that he wrote to Duncan describing how Duncan could contribute could be expanded into a general contribution guide and also noted that having the `tables` package would make at least two packages that both populate and render tables. 

**Action** JBR to contact Mike Stackhouse to ask Mike to add the `tplyr` package to the ebook and also Shanon Pileggi to contribute [`gtreg`](https://shannonpileggi.github.io/gtreg/).

SW noted that Pfizer plans to open source its package `tidytlg` which is based on [`huxtable`](https://cran.r-project.org/package=huxtable) can also do content generation and table generations. 

Three pull requests by Duncan Murdoch were merged during the meeting. The group reaffirmed a general policy that individuals contributing to the ebook can merge their own pull requests if their contribution does not touch work of anybody else. Otherwise, GB and AW agreed to supervise pull requests that interact with work from other contributors.

AL suggested adding text to the ebook telling readers how they could contribute content or suggestions. GB suggested adding text to the introduction section.

JBR noted that doing this would be a way to emphasize that the ebook is intended as a project that is expected to persist and grow over time.

**Action** GB agreed to write a first draft of the ebook.

At 20:20 into the video recording of the meeting the group began reviewing the rendered ebook and making updates. 

A decision was reached to have each package author render tables in HTML to achieve some uniformity of presentation.

LS asked what are the criteria for packages beinging included in the ebook. The group affirmed that any package can be included in the ebook that is:

1. in development 
2. can produce static tables intended for regulatory submissions 
3. can reproduce most of the table types identified in the ebook.

The [`table1`](https://cran.r-project.org/package=table1), which is only intended to build Table 1, is not included in the ebook.

The next meeting of the group will be on December 1, 2022 at 9AM Pacific Time.

## Minutes RTRS WG - 2022-04-07

### Attendees
* Gabriel Becker
* Phil Bowsher - Rstudio
* Rich Iannone - RStudio
* James Kim - Pfizer
* Eli Miller - Atorus
* Sam Parmar - Lilly
* Joseph Rickert - RStudio
* Yulia Sidi - Merck
* Tom Tensfeldt - Pfizer

The meeting was recorded and the [video](https://rstudio.zoom.us/rec/share/gEw03WF6GUeOdcZxdZt5vkfx0P-W0_qS0JxL9v8aZXYWZj6GdQzkLas9wjWFf-qL.dcIxx9--KV140DLQ) is available with passcode: 2VXC=Jk@

JBR started the meeting and mentioned that Gabe Becker would be giving a talk on the R Consortium's [R Adoption](https://www.r-consortium.org/webinars) series of webinars in which he would mention the working group and where we are on the project.

Next, Gabe Becker gave a demo of the new [formatters](https://cran.r-project.org/package=formatters) which started out as part of the Roche rtables package, but is now on CRAN. The package provides a framework for rendering complex tables to ASCII and a set of formatters for transforming values or sets of values into ASCII-ready display strings. It also supports C style formatting as well as custom functions and is careful to do rounding before truncation.

The package also supplies machinery for pagination that can be used by table creation packages for which there is a method to make use of it.

The screen share of the of the demo starts about 1:30 into the video and runs until 24:11.

At 25:43 into the video, the group began editing the working paper. 

We now have two documents:

1. The first paper, [01_cell_values_derivation.Rmd](https://github.com/RConsortium/rtrs-wg/blob/main/Papers/01_cell_values_derivation.Rmd), focuses on deriving cell values
2. The second paper, [02_second_paper.Rmd](https://github.com/RConsortium/rtrs-wg/blob/main/Papers/02_second_paper.Rmd) is devoted to rendering tables.

See the WG's project [Kanban Board](https://github.com/RConsortium/rtrs-wg/projects/1) for the up-to-date status of the project and work to be done.

The next meeting of the RTRS working group will be on Thursday, May 5, 2022 at 9AM Pacific Time.

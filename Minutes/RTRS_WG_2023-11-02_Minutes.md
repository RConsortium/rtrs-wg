## Minutes RTRS WG Meeting November 2, 2023

Minutes by Joseph Rickert

### Attendees

* Gabriel Becker
* Bob Engle - Arcus
* Alexandra Lauer - Merck
* Joseph B Rickert - ProCogia
* Adrian Waddell - Roche
* Dandi Zheng - Arcus

JBR began the meeting by thanking working group members who presented at the recent R/Pharma conference for a job well done and noted that R Consortium working groups and activities were well represented at the conference.

After some discussion, those present reset the priorities for the next round of work deciding that the group should focus first on listings and scaling tables, and put cell formatting on hold for the present.


### Listings

* The requirements for listings are specified in FDA [ICH Guidance Documents](https://www.fda.gov/science-research/clinical-trials-and-human-subject-protection/ich-guidance-documents). See the report [Guidelines for Industry: Structure and Content of Clinical
Study Reports](https://www.fda.gov/media/71271/download).
* There was some discussion as to what is the difference between a listing and a table, however, it was agreed that a listing is essentially a dataframe that differs with respect to:
  *  Formatting
  *  Not repeating items that remain constant for a block
  *  Footnotes
  *  Pagination
* The use cases for listings made with ADaM data and raw data are different. The latter are important for communication with CROs.
* If interactive applications such as Shiny become part of R Submissions listings may become obsolete.
* The [rlistings](https://cran.r-project.org/package=rlistings) package was designed to produce listings. This package is essentially a print method for [rtables](https://CRAN.R-project.org/package=rtables) and will work with any data that is in dataframe format.
* The WG believes that [gt](https://cran.r-project.org/package=gt) and [flextable](https://CRAN.R-project.org/package=flextable) can be adapted to produce listings.
* It is not known whether the other packages featured in the [ebook](https://rconsortium.github.io/rtrs-wg/) can be easily adapted to produce listings or whether the package authors will want to do the work.
* It is not known how many frameworks for producing listings exist in the industry.
* **Action:** the next step is for Gabe to produce a couple of listings for the ebook, perhaps including an example of short table broken up into a multiple short sections to show the code for pagination.
* The WG will review Gabe's work and determine if it is a reasonable reference implementation for the ebook.
* When the WG is satisfied with the reference implementation, the WG will set a date for the next version of the book and invite all package authors who may be interested to contribute listings code for the next version of the ebook.

### Tables at Scale
 
* There are two aspects to producing tables at scale:
  1. Producing large complex tables that span multiple pages
  2. Generating libraries of tables and other tools to help teams produce tables
* **Action:** Adrian will outline the chapter for scaleability including a short introduction and the appropriate headings and sub headings.

### Cell Formatting

* Precision based formatting requires rounding based on the precision of the data. It is a function of an entire column of a table and not of an individual cell value.
* It is thought to be an unsolved problem.
* It is not known if there are any applicable standards.

The next meeting of the working group will be at 9AM Pacific Time on Thursday, December 7, 2023.


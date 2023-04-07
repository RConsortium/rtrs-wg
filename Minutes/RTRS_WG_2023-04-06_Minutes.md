
## Minutes RTRS WG - 2023-04-06

The minutes were compiled by Joseph Rickert.

### Attendees
* Luai Alzoubi - Pfizer
* Gabriel Becker
* David Gohel -  Ardata
* James Kim - Pfizer
* Alexandra Lauer - Merck
* Duncan Murdoch
* Mark Quinn - Pfizer
* Joseph Rickert - Posit
* Adrian Waddell - Genentech
* Sheng-Wei Wang - J&J


Most of the meeting was recorded and the [video](https://zoom.us/rec/share/DEuiIhHaUUjNQw2LM9KanbkKvfUn77CeAiQdPticrm07Eo2LQSJwyAeD7bi0xWq5.I-sBGiNtjiCAwElS?startTime=1680797852000) is available.

The start of the meeting was delayed because of zoom issues. Several people had multiple invitations on their calendar, others did not have any invitations. The R Consortium is making an effort to schedule all working group meeting on an R Consortium zoom account. When connecting from a calendar invitation please confirm that the meeting is being organized by admin@r-consortium.org. If you are a member of this working group and do not have a calendar invitation please write to this email to request being added to the list.

Today's meeting was an active working session in which several issues were addressed and changes made to the ebook. 

The major topics discussed were:

* pdf files
* pagination
* the Disposition table
* Adverse Events table
* Lab tables
* conferences

### Pdf files
* Creating the ebook as a pdf poses problems with generating a table of contents
* Stitching together PDFs to include a TOC is difficult
* In general, tables will be made by multiple people, and there is no easy solution for having multiple people simultaneously editing a document. (GitHub based workflows are not being used by most pharma company writing teams.)
* Each table is the product of a specific programming effort
* It was suggested that it might be necessary to write a new package to assemble multiple PDFs to make a single document.
* Biostatisticians prefer a single document as a unit of work.
* A strategy might be to author in RTF and then convert to pdf.
* The health authorities will not accept RTF
* See Issue #67 and the comments

### The Disposition Table 

* Discussion starts 21 minutes into the video
* Section 4.6.1 of the ebook
* Tables should be consistent
* Gabe must make changes to the `rtables` version
* The [Roche catalog](https://insightsengineering.github.io/tlg-catalog/) provides a model but it does provide details on causes of death for the disposition table example. (DST01)
* See issue # 110 Update disposition table

### Adverse Table 
* Section 4.2 of ebook
* Decision made that longer tables better than wider tables

### Labratories Tables

* We need to pick a data set
* There are several lab table data sets in the TLG catalog
* LBT09 is representative 
* See issue #111 Lab Tables

### Pagination

* Look 44 minutes into video
* pagination in `rtables` is complicated
* Context is repeated after page breaks
* The CRAN package `formatters` is used for pagination in `rtables`
* See issue #112


### Conferences

* Gabe is giving a talk at R / Medicine
* We plan to have the "first edition" of the book published
* Next meeting we should discuss conferences where we might talk about the ebook

The next meeting of the WG will be at 9AM Pacific Time on Thursday, May 4.







## Minutes RTRS WG Meeting October 5, 2023

Minutes by Joseph Rickert

### Attendees

* Gabriel Becker
* Bob Engle - Arcus
* David Gohel - Ardata
* Rich Iannone - Posit
* Alexandra Lauer - Merck
* Joseph B Rickert - ProCogia
* Leon Shi
* Sheng-Wei Wang J&J
* Dandi Zheng - Arcus


### R/Pharma Presentation

* Alex and Rich are fine with sharing the 20 minute slot with Eric Nantz at the R/Pharma conference.
* Alex, Rich and others helping with the presentation will meet at 8AM PST on Friday 10/13 to work on the slides for the presentation.

### e-book Accessibility

* The WG would like to have the published version of the e-book available from the R Consortium home page. 
* **Action:** JBR will look into linking to the e-book from the R Consortium website.
* **Action:** DG will put links to both version 1 of the e-book and to the development version in the README section of the RTRS GitHub repo
* JBR remarked that the R Consortium is considering redoing the entire RC website as a Quarto site and asked if the group had any opinions.
* GB noted that Quarto is really designed for running code and that it may not be the best choice for a corporate website.
* With respect to the RTRS e-book the group agreed:
  *  Quarto is still developing and has some problems parsing tables
  *  Bookdown is a more stable technology and there is no advantage to be gained by moving to Quarto at the present time.
 
### Additional Tables for the ebook

* Gabe noted that he will soon be stating work with J&J that may reveal variations of tables that do not conform to our present archetypes.
* There was some discussion about whether the group should reach out to table package developers whose packages are not included in the e-book. The group sentiment is that we should be welcoming but not chase developers.
* **Action:** JBR will contact Atorus and Alex will reach out to the Novo Nordisk developers who presented their NNtable package at the recent [webinar](https://www.youtube.com/watch?v=t33dS17QHuA) describing their R submission.


### Next Steps

* The group spent some time discussing the tasks identified in 
[Issue # 139](https://github.com/RConsortium/rtrs-wg/issues/139).
* It was decided that the first priority should be cell formats, a topic that deals with rounding, and symbols displayed and that level of detail, but not with features such as color or bolding text. 
* There was a lengthy debate on whether the group on listings. The general sentiment that listing are likely to eventually become obsolete. However, they are still ubiquitous and smaller pharma companies who are in the process of deciding whether they should move from SAS to R might be put off if there were no guidance on listings.
* The group will focus on listings after making progress with cell formats. 

The next regular meeting of the RTRS WG will be on Thursday November 2, 2023 at 9AM PST.




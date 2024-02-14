## Minutes RTRS WG Meeting Decenber 7, 2023

Minutes by Joseph Rickert

### Attendees

* Gabriel Becker
* Alexandra Lauer - Merck
* Joseph B Rickert - ProCogia
* Adrian Waddell - Roche
* Himanshu Pandya - Arcus


### e-book Status

* There was a brief discussion about the uptake of the e-book. The impression is that the e-book is most valuable to smaller pharma companies who are looking for information about working with R.
* Gabe reported that during his consulting work with Jansen he has learned that new table shells are of interest to the FDA. 
  *  AE table shells are now being constructed that include a column for risk difference. (This is a confidence interval around a difference in proportions test)  
  *  Apparently, it has been the custom of FDA analysts to build this kind of AE table as part of their analysis.
  *   It is not clear whether this new shell is being suggested or required by the FDA or whether some pharma companies, having noticed this FDA practice, have decided on their own to just go ahead and produce AE tables with this field.
  *   **Action**: Gabe will search for FDA documentation.
* The WG members present confirmed that the two topics that the WG should work on next are: **Producing tables at scale** and **Listings**.  
  *  The central problem for producing tables at scale involves providing specifications for table shells that will enable companies to automate the process of producing tables for multiple clinical trials (~50) that involves potentially thousands of individual analysts.
  *  **Action:** Adrian will write the first draft of the Scale section of the e-book for the next meeting. Thereafter, it will have to be completed by WB members actively working in this area.
  *  **Action:** Gabe will work on the Listings section of the e-book.

### Possible New Working Group

The discussion identified the need for a new R Consortium working group to investigate the processes of creating [ADaM](https://www.cdisc.org/standards/foundational/adam) data sets from [STDM](https://www.cdisc.org/standards/foundational/sdtm) data. 

* The [`admiral`](https://cran.r-project.org/web/packages/admiral/index.html) package which is being used by the R Submissions WG presents one approach, however, it is not the only possibility. The [`respectables`](https://github.com/Roche/respectables) from Roche takes a different approach which emphasizes producing a specification to use for producing the data.
* **Action:** JBR will present this idea in the R Submissions WG.

### Next Meeting

The next meeting of the WG will be at 9AM PST on Thursday, January 11, 2024. Thereafter, for the rest of 2024 meetings will be held at the same time on the first Thursday of each month. 

* **Action:** JBR will arrange for the meeting invitations to be sent out.

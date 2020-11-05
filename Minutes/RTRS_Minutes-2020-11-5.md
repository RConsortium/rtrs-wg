
### R Tables for Regulatory Submissions Working Group
Minutes for first meeting: November 5, 2020 Prepared by Joseph Rickert
(Note: I lost internet connection three times during the meeting. If you attended the  meeting and believe that I have missed something important, please feel free to add an addendum to this document and be sure to include your name.)

Attendees Included:

* Joseph Rickert
* Keaven Anderson
* Bryant Chen
* Andy Nicholls
* Arthur Allignol
* Bob Engle
* Danield Sjoberg
* Himanshu Pandya
* Kevin Bolger
* Ning Leng
* Martin Brown
* Michael Kane
* Tadeusz Lewandowski
* Yilong Zhang
* Paulo Bargo
* Eli Miller


Joseph Rickert (JR) opened the meeting and reminded everyone that the minutes from the last meeting along with the requirements document contributed by Adam Sharp and posted by Michael Kane (MK) are on the RTRS [GitHub page](https://github.com/RConsortium/rtrs-wg).

JR asked if anyone present who did not attend the last meeting would like to introduce themselves. Bryant Chen of the FDA did so, and was welcomed to the meeting.

### Agenda
* Review of requirements document by MK
* Open discussion

### Requirements Review and Discussion
MK provided a brief overview of the requirements document and stated that there are two underlying issues;
1. Formatting at the level of columns
2. The notion of what constitutes a table is not well separated from the notion of a page. 

MK suggested that there are alternate approaches to verifying that requirements concerning tables are met including verifying the rtf code and inspecting the output. He suggested that a problem with the former is that there may be multiple ways to code the rtf that results in the same visual output of a table. Yilong Zhang (YZ) agreed that this might be the case and suggested various methods of verification.

KA suggested that it would be valuable to provide a default option for rtf code to produce certain output, but this would be an example only and not a requirement.

Bob Engle (BE) noted that 21 CFR Part 11 compliance is mostly about the compliance signature ensuring accuracy, reproducibility and integrity. MK asked for clarification about accuracy and BE replied that the document is concerned with accuracy in terms of formatting. Keaven Anderson (KA) remarked that this includes that numbers be rounded appropriately. 


JR asked if submissions get rejected if documents don't look right. One attendee remarked that he was aware of at least one incident where that sort of thing happened.


JR asked Andy Nicholls (AN) if the might be a point where the work this group is doing should be handed off to the R Validation Hub group that is taking a risk metrics approach to package validation. AN replied that that might be how things develop but characterized that work that the Validation Hub group is doing as being *external* and *retrospective*, i.e. it applies to packages that have already been developed. The working being discussed in this group is *internal* and *prospective*. Eli Miller (EM) noted that there is a PHUSE group working in this area.

JR asked what the work product for this group might look like. MK suggested that the work product would comprise a requirements document and a test harness. AN agreed, and there also seemed to be general agreement from those present.

### Next Steps
MK suggested that the next steps would be for
* package developers to review the requirements document for features
* Pharma attendees to review the requirements for relevance and completeness 

EM and AN both stated that they had relevant requirements documents that they would share. JR suggested placing the documents in the GitHub repo would be preferable, but that if people felt more comfortable sharing the documents in a less public way that they could mail documents directly to him (joseph.rickert@rstudio.com) and he would distribute it to the other members of the working group.

The group agreed to meet next at 9AM Pacific Time on Thursday December 3, 2020.
The meeting adjourned

Addendum 1 by JR

In an email sent after the meeting, YZ wrote that
> (Merck) created an R package to meet all those goals required by our company standards  https://github.com/Merck/r2rtf/. The attached slides to summarize the capabilities (r2rtf_slide attached).

> As gt recently put a lot attention on RTF output, I guess they may not be a gap now.  Overall, I feel gt can be a more general solution and be our backbone.

> w.r.t snapshot and other testing strategy for RTF, one of my colleagues is exploring that. https://testthat.r-lib.org/articles/snapshotting.html. I can share with you the details after we finalize a slides.

JR: the attachments referred to above will be made available on the repo.

Addendum 2 by JR

In an email sent after the meeting AN wrote:

> As discussed in the meeting just now, this is the set of requirements that I mentioned that we had created through PSI AIMS SIG.  I don’t seem to have push access to the repo to upload but I think it’s fine to share on reflection.  Note that it’s > 1 year ago so some of the conclusions may no longer be relevant.

JR: AN's document will be will be made available on the repo.

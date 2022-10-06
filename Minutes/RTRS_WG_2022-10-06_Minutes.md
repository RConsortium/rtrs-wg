## Minutes RTRS WG - 2022-10-06

The minutes were compiled by Joseph Rickert.

### Attendees
* Gabriel Becker
* Kevin Bolger - Procogia
* Phil Bowsher - Rstudio
* Martin Brown - PPD
* David Gohel-  Ardata
* Rich Iannone - RStudio
* Alexandra Lauer - Merck
* Tadeusz Lewandowski - Roche
* Joseph Rickert - RStudio
* Tom Tensfeldt - Pfizer
* Sheng-Wei Wang - J&J

The meeting was recorded and the [video](https://rstudio.zoom.us/rec/share/q-lRtNYpgWUx4hyS4o2w2eaV8L_BflupKVGOIg2uXwOWBXMwBQxWL5X-XSNw1vo.svl8JIfI3tofBGUo?startTime=1665072341000) is available.

JBR opened the meeting and mentioned that he was able to reach Yilong Zhang who said he would be happy to be able to contribute to the project. Yilong subsequently contributed some material to the ebook. However, GB observed that Yilong did not yet complete the sections on `r2rtf` examples.

**Action**: JBR will contact Yilong about providing table examples.

In general, we need code to construct all of the existing table types for all of the packages in the ebook. Also, we would want code for any other tables important to pharmaceutical applications that exhibit structural features not contain in tables we have previously identified.

The group agreed that it would be advantageous to have a github.io page that contains a rendered version of the latest version of the ebook.

**Action Item** David agreed to produced the rendered version of the book.

At 11:34 in the video, David shares shows a rendered version of the current state of the ebook. 

At 23:51 in the video, David shows the code he wrote for inserting a screen .png shot of a rendered table in ebook. This enable readers to see what the table will look like. The group agreed that this is a very nice feature and would like to be able to includes something similar for all of the packages featured in the ebook.

Note that Merck has something similar to this in their documentation for `r2rtf`: https://merck.github.io/r2rtf/articles/example-basechar.html

Gabe Becker emphasized that a major distinction between table packages is between those don't do cell layout and those that do. Most packages including  `gt`, `flextable`, and `r2rf` do not do cell layout. They operate on the long form of a data frame that as been produced by `dplyr` or some other functions. `rtables` however

Note the Markdown equivalent of \<br> is `  \n` This is space, space,\n 
Line break in gt: `md(“Top line /nBottom Line”)`

**Goal for this Year**
The group agreed that that immediate goal is to build out the ebook and have it available on github.io. The question about publishing academic papers based on this work was deferred for future discussion.

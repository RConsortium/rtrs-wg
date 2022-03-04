
## Minutes RTRS WG - 2022-02-03

### Attendees
* Gabriel Becker
* Kevin Bolger - Procogia
* Phil Bowsher - Rstudio
* Joe Cheng - RStudio
* David Gohel - ArData
* Steven Hassendonckx - JnJ
* Rich Iannone - RStudio
* Dilafruz Juraeva - Merck
* Alexandra Lauer - Merck
* Tadeusz Lewandowski - Roche
* Nicholas Masel - JnJ
* Michael Mayer - RStudio
* Eli Miller - Atorus
* Himanshu Pandya - Biogen
* Sam Parmar - Lilly
* Joseph Rickert - RStudio
* Tom Tensfeldt - Pfizer
* Pierre Wallet - Novartis
* Yilong Zhang - Merck

The meeting was recorded and the [video](https://rstudio.zoom.us/rec/share/JcbjcYC-KQOxxY1Z1b7WCiKqzuQC7QEObkUcgiVGiwwidBWzAAHyvJgqKDh3cElV.FfvlMob2OU_ccC73?startTime=1643907866000) (Passcode: 1SM8&K6y) is available.

JR brought the meeting to order and asked for status on responses to the tables that were submitted in response to the RC blog post asking for examples of difficult tables. (See issues #29 - #32). GB said that he added new features to rtables to satisfy one request that had to do with the conditional presence of columns (See 3:10 in video). AL said that she replicated the the rtables solution in tplyr.

JR asked two questions: 

1. Do we expect that all of the packages featured in our document will be able to provide solutions to the sample tables discussed in the document (some of which will be difficult tables submitted by the community)?  
2. How shall we publicly respond to the table samples submitted in response to our blog post?

GB responded to the first question by saying that for the basic structural table archetypes discussed in the paper, he thought all of the package featured in the working paper would be able to provide a solution, but that it would probably be the case that no package would be able to provide a solution to all possible tables. 

JR noted that it would be desirable if in the sections describing the various packages in the working paper, the package authors would be able to discuss the tradeoffs made in their respective designs and provide some guidance about the intended scope of their work.

At 11:20 in the video, GB discusses the lab shell issue #29. At 12:22 he discusses the empty lines issue #32, issue #30 at 14:20, and #31 at 15:10.

At 21:42 in the video the group begins working through the tasks on the project [Kanban Board](https://github.com/RConsortium/rtrs-wg/projects/1). A notable decision made is that the data from the rtables package will be used for the examples in the working paper.

To resolve the second question raised above, JR agreed to start drafting a post about the response to the call for tables post.

The next meeting is scheduled for 9AM Pacific Time on Thursday, March 3, 2022.




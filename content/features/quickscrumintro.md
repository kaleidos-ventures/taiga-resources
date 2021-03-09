---
title: "Quick intro to Scrum module"
date: 2021-01-12T07:27:41+02:00
draft: false
slug: "introscrum"
type: "featured"
order_home: 2
order: 1
image: "images/Scrum_backlog.png"
thumbnail: "images/Scrum_backlog.png"
description: "Predictable rhythm based on team commitment"
categories:
  - "scrum"
---

Scrum is an agile framework for developing, delivering, and sustaining complex products. Although it had an initial emphasis on software development, it has been used in other fields including research, sales, marketing and advanced technologies. It is designed for teams of ten or fewer members, who break their work into goals that can be completed within timeboxed iterations, called sprints, no longer than one month and most commonly two weeks.

You can also say that Scrum allows teams and stakeholders to make sure they are delivering the optimal partial product every time even if it's hard to predict what a final product would look like.

Scrum is probably the go-to Agile framework when teams or organisations decide to try an "agile on rails" experience for the first time. It is also a lifetime's choice for many agile teams.

### Taiga Scrum module

Every Taiga project can ***activate the Scrum module***. This also happens automatically if you chose the Scrum template upon project creation. Although it's optionaly, it's strongly suggested that you enter a **number of estimated Sprints** (fixed time periods) and the **project size in points**. If in doubt, you can just input 10 for Expected number of Sprints and 100 for Expected number of story points and come back to change them in the future.

{{< figure src="/images/Scrum_settings.png" caption="Project settings for the Scrum module" alt="Project settings for the Scrum module" width="100%" class="articlefigure" >}}

When you do this the project's toolbar will show the Scrum icon and you will be able to ***access the Project's backlog and any ongoing sprint***. By default the Scrum statuses are ones that generally fit the software development process but feel free to change them yourself. You can *create your own set of Scrum statuses* columns by going to SETTINGS > ATTRIBUTES > STATUSES and change USER STORY STATUSES.

{{< figure src="/images/KANBAN_test04.jpg" caption="Project attributes setup" alt="Project attributes setup" width="100%" class="articlefigure" >}}

Scroll down to the USER STORY STATUSES and ***change the default settings to accomodate your particular use case***. If you want your user stories to be considered as done when they reach a particular status, flag that status as **Closed**. This is very important for Scrum metrics and Taiga makes use of it for various Scrum charts so it's good to give it a thought, you can change this at any time.  In Scrum you won't typically need to use the Archived flag for a status since the benefit of hiding user stories in that state is not needed here, closed Sprints give you that "tidying up" mechanism.

Finally, we suggest you also ***take a look at the TASK STATUSES*** right below USER STORY STATUSES and see if you want to change them. Taiga encourages you to split up user stories into maneagable tasks that are usually assigned to just one team member so it's good to select your particular set for more "hands-on" work items. This has a big impact on how Sprints are managed and viewed as we will later show.

{{< figure src="/images/KANBAN_test03b.jpg" caption="Project settings related to Task statuses" alt="Project settings related to Task statuses" width="100%" class="articlefigure" >}}

This is the basic setup. You can now go to the Scrum module and ***start creating user stories in the Backlog*** prior to ***adding any new Sprint***. You can create one user story at a time and make use of the detailed creation dialog or you can bulk create them and fill in the relevant information at a later time.

### Scrum Backlog

There are various so called *artifacts* in Scrum. The top three are the **Backlog**, the **User Stories** and the **Sprints**. They respectively represent *what is to be done ordered by priority and readyness*, *the pieces of work themselves* and *the fixed time periods* in which we put selected User Stories to be worked upon and finished.

Taiga has two main views for Scrum. The first one is the Scrum Backlog screen. Here you see three major blocks. The Burndown chart (central top pane) which keeps track of your team's velocity, the Backlog (central bottom pane), were future work (User Stories) are frequently added and both open and closed Sprints (right pane).

{{< figure src="/images/Scrum_backlog_nocollapse.png" caption="Backlog view using the Scrum module" alt="Backlog view using the Scrum module" width="100%" class="articlefigure" >}}

This Backlog view conveys a lot of information but Taiga tries to make the visual and mental loads easy to cope with. We can't fast forward this process for you but we can help you understand how all three blocks are related to one another at any stage of the project.

The **Backlog** or **Product Backlog** can grow indefinetly as long as the top placed user stories enjoy highest priority and are "ready" to start working on then. You can arrange user story priorities by simply dragging and dropping them in the Backlog. Click on single user stories to fill in all the relevant information so the team can decide they are ready for an upcoming sprint. It is somewhat challenging to consider a user story ready for a Sprint if the team hasn't at least filled in Title, Description and Points. Optional but really valuable are the user story's tasks and attachments or [custom fields](/features/customisation).

**User Story Points** in Taiga are a measure of the overall complexity of a **User Story**. Take advantage of Taiga cross-functional capabilities to set up which team roles are allowed to partially contribute to the total user story points. You can do that under SETTINGS > PERMISSIONS when you activate the estimation flag for a selection of your team roles. User Story points are one of the most challenging aspects of Scrum, be sure to read [Scrum, the Dark Side](/features/scrumdarkside).

Note that you can have different user stories statuses applicable when they belong to the Backlog. The three most common Backlog-friendly user story statuses are something like New, Ready or Needs info. The remaining of the user stories workflow typically happen within a Sprint.

Next, under the **Sprints** pane, create a new Sprint, select a descriptive title and start and end dates. You can assign user stories from the Backlog to this Sprint by dragging and dropping them. If you multiple-select various user stories in the backlog, you can drag and drop them together after multiple-selecting them or use the handy "Move to Current Sprint" action.

{{< figure src="/images/Scrum_sprints.png" caption="An example of an already filled-in ongoing sprint" alt="An example of an already filled-in ongoing sprint" width="100%" class="articlefigure" >}}


**Congratulations! You have your first Sprint set up for work!**

The Burndown chart will still look a bit boring but that will change the moment user stories are closed. This chart's role is quite simple and yet crucial. It will show how much progress in terms of closed user story points is being made sprints after sprint. It helps you predict whether you will be able to smash the project's estimated total points by the end of the last sprint or not. It shows an average velocity for you to compare against but teams normally get a rather non-straight Burndown chart.

{{< figure src="/images/Scrum_burndown.png" caption="A very simple 4-sprint Scrum burndown chart" alt="A very simple 4-sprint Scrum burndown chart" width="100%" class="articlefigure" >}}

### Scrum Sprints

The Scrum Backlog view will always show a summary view of ongoing or closed Sprints but teams generally stick to the **Sprint Taskboard** view when they are focused on getting things done for that Sprint. Click on either the Sprint name or the "Sprint Taskboard" button so you can access the very important Sprint Taskboard. Open Sprints appear as shortcuts through the left navigation pane's Scrum icon.

{{< figure src="/images/Scrum_sprint_zoom02.png" caption="Sprint taskboard showcasing some user stories and their tasks" alt="Sprint taskboard showcasing some user stories and their tasks" width="100%" class="articlefigure" >}}

The Sprint Taskboard is quite flexible and it's a good example of "visual management", meaning that is radiates information for the entire team. User Stories are kept to the left and the bigger part of the Taskboard is devoted to a KANBAN-style pipeline for tasks. Those tasks are the individual work components through which user stories are carried out and they enjoy their specific tasks workflow, which can be inspired or not by user stories workflow, as they are separate.

Please note that whenever all tasks belonging to a user story are in a Closed state, such user story counts as closed for metrics and velocity regardless of the particular user story status. Speaking of which, the Taskboard has its particular Burndown chart, which keeps track of how fast the team is closing user stories before the end of the Sprint and the traditional Sprint Demo event. It's hidden by default but you can expand it clicking on the histogram icon.

{{< figure src="/images/Scrum_sprint_burndown.png" caption="A sprint with a burndown chart waiting to see actual progress" alt="A sprint with a burndown chart waiting to see actual progress" width="100%" class="articlefigure" >}}

What is always visible is the Sprint stats. For that, Taiga uses a simple bar section at the top. It is pretty self-explanatory but there are two icons that are worth mentioning.
The opposed arrows icon ![arrows](/images/arrows.png "Sprint carry-over") allows a team to send any sprint's unfinished work to any other open sprint, effectively closing the origin sprint. It's quite handy although we hope you don't need to use it very often. The poison icon ![iocaine](/images/iocaine.png "Iocaine icon") if there just to keep track of the number of tasks labelled as [Iocaine](/faqs/#iocaine) by their assignees. Please check out [what is Iocaine and why you should use it](/faqs/#iocaine) to declare when a task is particularly challenging for the assigned team member.


Team members can collapse both user stories and tasks statuses so that they are pleased with a better use of their screen real estate.



### Scrum filters and search options

Whether you are at the Backlog screen or the Sprint taskboard screen, you might want to use the built-in search or filter capabilities.


{{< figure src="/images/Scrum_filter.png" caption="Sprint taskboard with filters applied" alt="Sprint taskboard with filters applied" width="100%" class="articlefigure" >}}

Simply click on Filters and fiddle with include/exclude criteria with live reaction from the Backlog or the Sprint Taskboard. You can remove them at any time or create a custom filter for future use, one click away.

You can also combine it with the search box that will try to be as smart as possible and show matching content only.

### Sprint taskboard zoom levels

A Sprint taskboard radiates information to all team members and, most importantly, makes sure that everyone shares the same vision.

However, Taiga users are allowed to pick their preferred zoom level for the Sprint taskboard. You can pick from four options: compact, default, detailed and expanded.

A picture is worth a thousand words, just see how different the same Sprint taskboard can look depending on your zoom level preference.

{{< figure src="/images/Scrum_sprint_zoomcombined.jpg" caption="Sprint taskboard with expanded zoom vs compact zoom" alt="Sprint taskboard with expanded zoom vs compact zoom" width="100%" class="articlefigure" >}}

When you prefer more detailed or expanded zoom levels you are asking Taiga to bring more and more information on the content to the front, saving you that extra click to view its detail. Compact or default zoom levels make the Sprint taskboard more of a heat map of sorts and can accommodate more content in one screen.

Of course, you can change your zoom level preferences at any time. And don't worry, this is your personal Sprint taskboard view, it does not affect other team members personal preferences.

You will probably find yourself sticking to a preferred zoom level most of the time while also collapsing user stories you don't need to see, or tasks statuses that you don't manage.


### Scrum relationship with Kanban module

Taiga is about choice and flexibility while still adhering to basic agile and lean principles. We want you to start using either Scrum or Kanban for your project (or neither and stick with Issues) and later change your mind.

In order for Taiga to manage this transition, we decided that a Kanban work item or Kanban card would also be internally considered a Scrum User Story. That way, you can keep all your work regardless of which Agile module you are using.

Actually, you could have both modules, Kanban and Scrum activated and see the same item placed on the Scrum Backlog or a Scrum Sprint and, at the same time, see it on the Kanban board, in a particular swimlane. As the Taiga Team likes to say "if you know what you're doing, we're fine".

Be sure to read [Scrum, the Dark Side](/features/scrumdarkside) to know more about potential pitfalls while using Scrum.




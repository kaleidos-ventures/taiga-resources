---
title: "Taiga reporting capabilities"
date: 2021-02-12T07:27:41+02:00
draft: false
slug: "reporting"
order_home: 4
order: 3
image: "images/issues.jpg"
description: "Taiga's approach to reporting and visual management"
categories:
  - "modules"
  - "reporting"
---

Taiga focuses on soft reporting across the entire platform plus convenient API and live CSV exports.

When you think about reporting, you almost inevitably visualise charts and progress bars, shiny metrics that provide you with a feeling that you have everything under control.

Taiga took a different approach right from the beginning. Instead of trying to please everyone with a reporting module, we decided to allow teams to use their favourite reporting tool and integrate it with Taiga's API or Live CSV exports and instead focus on soft reporting across the entire platform.

This soft reporting has two major advantages:

It's there for the whole team provided they have a say in the project (their assigned role permissions would be a hint to this).
It becomes part of the process and the associated cognitive load remains quite low.

OK, let's see how Taiga's soft reporting approach works.

## Project soft reporting

### Timeline

A project's timeline is a quick and convenient way to assess recent updates on the project. It's infinte scroll allows you to go past the latest notifications and explore older news about the project. You can access the project's timeline simply by clicking on the Project's logo on the project's sidebar.

{{< figure src="/images/reporting_timeline.png" caption="A sample project's timeline where team members' activities and integrations are shown." alt="A sample project's timeline where team members' activities and integrations are shown." width="100%" class="articlefigure" >}}

### Scrum backlog

Scrum is on of the leading Agile techniques and one of the reasons of its success is the project burndown's artifact, which shows at what rate an estimated backlog is dealt with across previous sprints. Taiga allows you to set-up an overall project's user story points and number of sprints you can establish a deadline and a target for such completion.

{{< figure src="/images/reporting_burndown.png" caption="A project's backlog and its scrum burndown showing sprint points velocity." alt="A project's backlog and its scrum burndown showing sprint points velocity." width="100%" class="articlefigure" >}}

### Sprint taskboard burndown

In Scrum, workloads are split into successive sprints. These sprints represent the team's committment and, therefore, benefit from some visual tracking of what's finished or still in progress. That is why Taiga has a specific Sprint taskboard burndown panel where everyone can track the rate at which user stories and tasks are finished per day. This allows for quick diagnose on the sprint's health.

{{< figure src="/images/reporting_sprintburndown.png" caption="A sprint burndown might look like this, specially if effort is put into early closure of user stories' tasks." alt="A sprint burndown might look like this, specially if effort is put into early closure of user stories' tasks." width="100%" class="articlefigure" >}}

### KANBAN zoom level

Taiga's KANBAN module allows for four different zoom levels. You can go from **Compact** to **Expanded** and enjoy different amounts of information. In particular, we would like to highlight the importance of the **Compact** mode where KANBAN cards are reduced to their core essence and can help identify upcoming challenges. Are WIP limits being implemented and enforced? Is there a disproportionate number of tasks assigned to one person? Is there a KANBAN column with too many blocked cards? Should a particular KANBAN column be flagged as **Archived** under SETTINGS so that it doesn't load its historical content?

{{< figure src="/images/KANBAN_test08.jpg" caption="Both ends of the zoom's spectrum for KANBAN. Note how the left one gives instant visual information." alt="Both ends of the zoom's spectrum for KANBAN. Note how the left one gives instant visual information." width="100%" class="articlefigure" >}}


### Epics with multiproject support

Taiga's Epics Module can serve to track grand themes across user stories (or KANBAN cards) in a project. After all, and Epic can be viewed as a sophisticated container with its own lifecycle that gets updated every time a child user story changes its progress. This can be crucial for some people that don't need to acre about specific work items but overarching project modules or goals. Even better, Taiga supports multiproject Epics, meaning that you can use an Epic to track user stories belonging to the same project but also to any other project where you have appropriate VIEW permissions for user stories.

Multiproject Epics can be useful in scenarios where multiple projects' progress feed into a bigger strategic project.

{{< figure src="/images/reporting_epics.png" caption="A sample Epics module with three epics, one of them expanded and showing multiproject user stories and its progress." alt="A sample Epics module with three epics, one of them expanded and showing multiproject user stories and its progress." width="100%" class="articlefigure" >}}

## Work item soft reporting

There is much value in having the work item, whether it's a user story, a KANBAN card, an issue or an Epic, speak for itself and its lifecycle. Particularly, when Taiga follows a "Don't ask for permission, ask for forgiveness" poilicy when it comes to workflows and permissions. The detail view for any Taiga object strives for autonomy and comprehensive information. It's imperative that the Taiga object can radiate information in an elegant way. Here are three ways this happens.

### Activity

Every Taiga object, from Wiki page to Epic, sports an **Activities** at the bottom where every major item change is logged. It's meant to be a human-friendly log where even changes to text fields can be dissected.

{{< figure src="/images/reporting_activity.png" caption="A user story activities pane displaying different changes by different people, including a newly created custom field." alt="A user story activities pane displaying different changes by different people, including a newly created custom field." width="100%" class="articlefigure" >}}

### Notification level

As a Taiga user you can setup your particular notification scheme per project. There are three tiers. Receive All, Only involved and No Notifications. You can access this on NOTIFICATIONS menu entry under your profile picture at the top.

When you select Only involved (this is the default) for any project, Taiga will send you an email each time there is a significant change on a Taiga object you're **assigned to** or you're **watching**. You can setup a similar approach for Desktop and Notification bell under DESKTOP NOTIFICATIONS and EVENTS.

## Team member soft reporting

Sometimes it's just curiosity, some other times accountability is the key driver but more often than not, there is an interesting narrative around what team members do in a project or what they are watching. Putting that into a bigger context also helps to understand the different team dynamics.

### User profile

Every Taiga user has a profile page. You can access your own [here](https://tree.taiga.io/profile) and see what is being logged about your activity. Nothing really should surprise you and you probably prefer to stick to your [personal Dashboard](https://tree.taiga.io/) but the nice thing about this user profile is that it's accessible to other Taiga users if there is some work overlap between you and them. Whatever is inaccessible to them as Taiga users will not be shown on your profile.
You can access other people's profile simply by clicking on their names or mentions.

{{< figure src="/images/reporting_profile.png" caption="An example of a personal profile page, showing the watched items in this case." alt="An example of a personal profile page, showing the watched items in this case." width="100%" class="articlefigure" >}}


### Sprint Taskboard and KANBAN Filters

Taiga has a very flexible filter system that you can tweak in many ways. What's more, you can save particular filters into your private filters list. This means you can add a filter for your own *assigned but not closed* tasks on a sprint taskboard or for the *blocked and assigned to a team member* KANBAN cards. This allows every to suddenly focus on a particular workload (and achievements) of one or various team members.

{{< figure src="/images/reporting_filters.png" caption="This KANBAN has 'assigned to The Princess Bride' filter activated." alt="This KANBAN has 'assigned to The Princess Bride' filter activated." width="100%" class="articlefigure" >}}

### Team page

Lastly, as a fun way to award badges to team members, you can visit the Team page from time to time and see how the team members fare across the different categories. It takes different types of activity and ranks them across the team, giving each member a total *power* score. You can use this for kudos or to check whether there is a fundamental inbalance between team members in the project.

{{< figure src="/images/reporting_teampage.png" caption="A very diverse team with a nicely distributed project 'power'." alt="A very diverse team with a nicely distributed project 'power'." width="100%" class="articlefigure" >}}

### Final remarks, your feedback is much appreciated

At Taiga, we are always trying to find out correct ways to convey and channel project's progress and context in ways that not necessarily require charts and histograms. At the same time, **there is information that might need specific ways to address visual management requirements**. Please contact us at support@taiga.io (suggested subject "Roadmap interview") with your particular requests and be part of the next major Taiga release.
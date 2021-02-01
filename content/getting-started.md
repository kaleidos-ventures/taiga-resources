---
title: "Getting Started"
date: 2020-10-05T11:27:30+02:00
draft: false
image: "images/kanban.jpeg"
thumbnail: "images/getting-started.png"
thumbnail_home: "images/getting-started.png"
---

Taiga will always try to make things easy and intuitive for new users but it's good to have a nice & quick overview for your first couple of days.

There are two main use cases we need to cover. Project Admin and Project Team Member. The main difference between both is that a Project Admin can change a project settings. Obviously, one can be a Project Admin on one or two projects and a Team Member on five others, but we will treat both onboarding needs separately.

## As a Project Team Member

Whether you got an invitation link or you signed in and were added to a project, the basic question here is, what's Taiga all about and how can I get my work done?

There are four major Taiga sections you should be aware of. We'll go from most used to least used, although all are useful in their own ways.

### Project view

You can access your assigned projects by clicking on Projects link at the top left of your Taiga screen. You can hover and get the an interactive shortlist or click on the link and go to a dedicated page where you can access them as well as rearrange them. Once you have clicked on a project, you access your default view for that project, which is always the Project's Timeline if you haven't change that (we'll discuss this later under Account Settings).

{{< figure src="/images/projecttimeline.png" caption="A simple project timeline with all modules activated" alt="A simple project timeline with all modules activated" width="100%" class="articlefigure"  >}}

From here you can browse the project's main modules by taking a look at the sidebar. This sidebar won't ever get cluttered and it's split into two sections. The top section lists the active main modules (Epics, Scrum, KANBAN and Issues) while the bottom section show the active secondary modules like Wiki and Meetup as well as the Team section and the General Search feature. You can expand the sidebar if you prefer more explicit navigation information.

Chances are that you will either want to create or update a user story, a task or an issue. If you're using the Scrum module, you simply click on Backlog and create a user story. Afterwards, you can rearrange its priority by simply drag and dropping it.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/backlogadduserstory.webm" type="video/webm"></video>

If you're using KANBAN, it doesn't get much difficult. Click on KANBAN and click on the + button on the column you want the card to be initially placed at (normally, that's the initial column).

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/kanbanadduserstory.webm" type="video/webm"></video>



## As a Project Admin

Everything we just covered for Team Member applies to you (make sure you go through it) and yet there's the whole project settings world to explore.

Besides editing the Project Details where you can change the project's logo, description info and the Public or Private status, there is much more waiting for you when you navigate through the two-tier project settings menu.

{{< figure src="/images/projectdetails.png" caption="A window to Project Settings" alt="A window to Project Settings" width="100%" class="articlefigure"  >}}

Typical first-day project settings changes include role & permissions to accomodate your team's diverse nature, module activation and workflows adjustments.

The [Customisation page here]({{< ref "/features/customisation.md" >}}) at taiga Resources offers a very hands-on guide to project configuration.

As a Project Owner (creator) you don't need to do all the customisation heavylifting, you can give Admin status to any team member under SETTINGS > MEMBERS so that they can too help you with the project fine-tuning. 
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

#### How can I add or edit work items?

Chances are that you will either want to create or update a user story, a task or an issue. If you're using the Scrum module, you simply click on Backlog and create a user story. Afterwards, you can rearrange its priority by simply drag and dropping it.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/backlogadduserstory.webm" type="video/webm"></video>

If you're using KANBAN, it doesn't get much more difficult. Go to KANBAN and click on the + button on the column you want the card to be initially placed at (normally, that's the initial column).

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/kanbanadduserstory.webm" type="video/webm"></video>

Drag & Drop works as expected throughout Scrum and KANBAN. In Scru's Backlog view you will use it mainly to rearrange the backlog's priorities and also to select one or multiple user stories from the backlog to fit into a open sprint located under the Sprint pane.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/scrumaddustosprint.webm" type="video/webm"></video>
*Here we use the add to current sprint shoretcut instead of drag & drop. The Sprint burndown was also updated.*

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/sprintcreatetasks.webm" type="video/webm"></video>
*We created a single task with the creation dialog but the bulk add option is also handy sometimes.*


In KANBAN, drag and drop has the meaning of chaning a KANBAN card status and it's the primary workflow action you can make on a card to advance it to the next stage.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/kanbanmovecard.webm" type="video/webm"></video>
*Note how the KANBAN columns' WIP limits are updated after each card movement.*

You can always click on a user story and see its detail view, check its tasks, change title, assigned team members, add comments or simply edit its description.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/editus.webm" type="video/webm"></video>
*A user story detail view represents the general approach to detail/edit view for Taiga main entities.*

If you are interested in knowing more about how KANBAN or Scrum modules work, be sure to check [The 5-min Kanban module overview]({{< ref "/features/5minkanbanoverview.md" >}}) and the [Quick intro to Scrum]({{< ref "/features/quickscrumintro.md" >}})

#### Further reading for Issues, Wiki, Epics and Meetup

They all follow the same basic principles. You will quickly find that whether you want to edit a textbox, attach a file or an image, make someone a watcher for an item or simply add comments and quote people, Taiga remains consistent across the board.

You should be ready to visit the [guide to Issues]({{< ref "/features/issues.md" >}}) as well as the compact walkthrough for [ Wiki, Epics and Meetup]({{< ref "/features/epicswikimeetup.md" >}}) modules.

### Dashboard view

Upon login or if you just go to your Taiga instance, you're confronted with your Taiga dashboard with quick access to your working on items, a list of watched items and shortcuts to your projects. You can always go back to your dashboard by clicking on the Taiga icon on the top bar.

{{< figure src="/images/dashboard.jpg" caption="You can hide some items that are not that relevant" alt="You can hide some items that are not that relevant" width="100%" class="articlefigure"  >}}


### Account settings view

What's a tool without account settings where you can personalise your platform experience? Taiga has very straightforward section for that, just hover your avatar and select Account settings. Besides the usual personal information and password change you get to choose your preference for some automated actions and notifications schemes.

<video autoplay="" muted="" loop="" playsinline="" class="screenshot__media" width="100%" height="auto"><source src="/images/profilesettingschangestartpages.webm" type="video/webm"></video>
*here you see how we went to change our default start page for a project to be the KANBAN view.*

### Profile view

Taiga has an additional section to get a multiproject view where you can find and list everything that is accessible to you. Simply click on your avatar and you access your personal profile section where you can check from what your personal BIO looks like for people that might have access to it to all sorts of information on your activities and relevant content.

{{< figure src="/images/profiletaskswatched.png" caption="One of the many lists and filters under your profile, watched tasks in this case" alt="One of the many lists and filters under your profile, watched tasks in this case" width="100%" class="articlefigure"  >}}

#### Further reading

The [Frequently Asked Questions]({{< ref "/faqs" >}}) is a nice place to go from here but if you're in the mood of better understanding the dark side of Scrum and KANBAN and how to avoid their potential pitfalls, indulge yourself in the eye-opener 10-min reading that [Scrum: The Dark Side]({{< ref "/features/scrumdarkside.md" >}}) and [KANBAN: The Dark Side]({{< ref "/features/kanbandarkside" >}}) are.

## As a Project Admin

Everything we just covered for Team Member applies to you (make sure you go through it) and yet there's the whole project settings world to explore.

Besides editing the Project Details where you can change the project's logo, description info and the Public or Private status, there is much more waiting for you when you navigate through the two-tier project settings menu.

{{< figure src="/images/projectdetails.png" caption="A window to Project Settings" alt="A window to Project Settings" width="100%" class="articlefigure"  >}}

Typical first-day project settings changes include role & permissions to accomodate your team's diverse nature, module activation and workflows adjustments.

The [Customisation page here]({{< ref "/features/customisation.md" >}}) at taiga Resources offers a very hands-on guide to project configuration.

As a Project Owner (creator) you don't need to do all the customisation heavylifting, you can give Admin status to any team member under SETTINGS > MEMBERS so that they can too help you with the project fine-tuning. 
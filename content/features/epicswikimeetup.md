---
title: "The Epics/Wiki/Meetup, icing on the cake"
date: 2021-01-11T07:27:41+02:00
draft: false
slug: "epicswikimeetup"

# post thumb
image: "images/variousmodules.png"

# meta description
description: "Those little extras that can make a huge different to you project"

# taxonomies
categories:
  - "modules"
---

Those "little" extras that can make a huge different to you project. Part of the beauty of using Taiga is that you can hypersimple and then build your way up by using more features or more modules. This entry on Taiga Resources will cover three less critical modules that could make your team's life so much easier...

### Taiga Meetup module

Let's start with least impressive of all three but still a convenient add-on for quick project-based video rooms. Under SETTINGS > PROJECT > MODULES, you get the Meetup module. Once you activate it, you're allowed to pick either one of the available free videocall services with a unique URL o add your own shortcut. This will add the Meetup icon to the project's sidebar.

{{< figure src="/images/meetupconfig.jpg" caption="Meetup module is activated" alt="Meetup module is activated" width="100%" class="articlefigure" >}}

Everyone will be one click away of the "official" online videochat room for the project. It's as simple as that. Don't underestimate this little module, it reduces the typical cognitive load of keeping track of meetup urls yourself.

### Taiga WIKI module

Now, this is much serious stuff. Activating the WIKI module under SETTINGS > PROJECT > MODULES (you expected this by now) brings a small content management system to your project. Here you can directly add wiki pages using the Bookmarks option or use internal link references.

This is important so we will explain a bit how it works. The WIKI module allows you to instantly create WIKI pages with images, tables and all the microformatting you're used to by now. You just need to add any term to your project's wiki url and you will get this:

{{< figure src="/images/wikipage.jpg" caption="URL says *thisisatest* and Taiga suggests a new WIKI page" alt="URL says thisisatest and Taiga suggests a new WIKI page" width="100%" class="articlefigure" >}}

Now, keeping track of all these WIKI pages could be tough so usually what team members do is to create those pages through internal links within other WIKI pages. If you are using the HTML mode, simply add a compact title (no spaces) to the link reference. If you prefer to use markdown mode, it's just the standard [text for a page title](pageslug) snippet.

Taiga will know if the destination page exists already or not. If it doesn't, you'll be prompted with the above message. **Edit that page (just click on it), save it and you're done, that WIKI page is now "solid"**.

If during your creative process, you feel like you would like to have some WIKI pages readily available as bookmarks, **you can simply create a new bookmark and start typing already**. Or, if the WIKI page already exists and you want it to be somehow *promoted* to the Bookmarks sidebar, still create the bookmark and enter the WIKI page slug you chose (what appears at the end of the URL), Taiga will understand.

{{< figure src="/images/wikipagesample.jpg" caption="A sample WIKI page by a The Princess Bride fan. Images, text, tables, code, attachments and a bit of activity" alt="A sample WIKI page by a The Princess Bride fan. Images, text, tables, code, attachments and a bit of activity" width="100%" class="articlefigure" >}}


WIKI pages can be **very useful to write documentation, technical or otherwise**. We suggest you break down your content to be very modular and have **many WIKI pages linked together instead of a few textwalls**. Images and other files can be attached to any WIKI Page through drag & drop but also as simple attachments to have handy **below the page content itself**.

What is hidden by default is the WIKI page's changelog. **Taiga keeps a fairly comprehensive audit trail** of every change for every Taiga item. WIKI pages are no exception and you can inspect all the activity by clicking on the **Activity** banner at the bottom.

That's really all that there is for the WIKI Module. The same Markdown syntax rules or the fantastic Taiga HTML editor make up for the rest of the story, to be honest.

Don't be afraid to deactivate the WIKI Module at any time, **it's a non-destructive action**. Taiga simply hides all that content from the team but does not delete anything.

### Taiga Epics Module, a powerful tool in the right hands

Many teams have the need for broader context around user stories. This can be a **release, a milestone, a subproject or any abstraction that covers and tracks progress of user stories**. This bird's eye view can be very useful to monitor these collections of user stories and we made sure that you are not constrained to pick them from one project, any Epic can keep track or user stories from any of the projects you have adequate permissions for.

This way, a project could even have just the Epics Module activated, no KANBAN, no Scrum, no issues, just Epics, and have **a summary view of multiple projects across the organisation** thanks to the multi-project user story support for Epics. For instance, you could have a Quarter objective in terms of certain brand designs being finished where that brand design work is spread out several more "operational" projects.

Having said that, the most typical use of Epics is simply to contain **high level project achievements**, impossible to be operated on but relevant **strategy-wise**.

{{< figure src="/images/epics.jpg" caption="A very straightforwad major goal oriented Epic list. Partial progress is shown for both Epics and related user stories" alt="A very straightforwad major goal oriented Epic list. Partial progress is shown for both Epics and related user stories" width="100%" class="articlefigure" >}}

We borrowed the term Epic from Epic User Story in Scrum, where teams define **broader value oriented goals that will later be split into proper user stories**, much more manageable and that can be assigned, tracked and added to a Sprint. Thanks to the KANBAN support in Taiga, you are free to combine Epics with KANBAN cards as well. And in case you were wondering, yes, one user story can be related to many different Epics. If it makes sense to you, **that's fine by us**.

You activate Epics Module the same way as the rest of modules, simply go to SETTINGS > PROJECT > MODULES and turn on the Epics toggle.

**Pro-tip:** It pays off to pick a nice and iconic project icon (see SETTINGS > PROJECT) and a distinct colour for each Epic. Taiga's listings and detail views make use of this allowing far more intuitive assessmenet at a glance.

Finally, don't forget to pick your choice of options to be visible under the **view options** drop down.


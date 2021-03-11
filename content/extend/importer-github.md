---
title: "Github Importer"
date: 2020-10-05T11:27:09+02:00
draft: false
categories:
  - "Tool migration/import"
thumbnail: "images/import-github.png"
thumbnail_home: "images/import-github.png"
---

You can migrate/sync from Github to Taiga as your primary project management platform following these instructions carefully.


***Disclaimer: Some Taiga product screenshots might refer to older Taiga or Github releases. When in doubt, please follow the written instructions.***

### Suggested step before importing your project. Read this first!

**Summary:** if you want to import team members too, make sure those team members are Taiga users already. A nice workaround is creating a dummy project and inviting them to it. taiga will take care of sending invites and you'll be able to track how many users are now part of Taiga before actually importing the project itself.

When you import your project, you often want to also import your users and keep all the relations between the work items and the team members. Taiga's import project will first look for its team members, add them to the project and then proceed with the content itself.

**If those users don't exist on that particular Taiga instance** (tree.taiga.io or your self-managed Taiga instance), the import process will still go ahead but **the link between content and users will be lost** and it won't be recovered even if you add those users *afterwards*.

**If you need to keep the relationships between content and team members** (for example, such team member was assigned to that task or such comment was made by that team member), you need to make sure those team members already exist on that Taiga platform. You can achieve this by asking them to sign up themselves (using the same email address that identifies them on the source platform) or **creating a dummy project and invite them to it**. 

On the top of your Taiga screen you have the "Projects" button. After you have created/selected a project, to invite a new team member go to SETTINGS>MEMBERS (on the sidebar). On the top there is the NEW MEMBER button. You can do this in batches of five team members each. You probably can ignore the different ROLES option here since this project is temporary.

Taiga will send invites to all users that are not yet part of the platform and you will be able to track how many invites have been accepted. You can resend invites as much as you want.

**Whenever you are happy with the number of people that were part of Taiga**, either by signing up or accepting your invitation, **you can proceed with a project import**. This way, you will be able to seamlessly start working on Taiga. After this, you can safely remove the dummy project since it probably doesn't provide any value any more.

For more project customisation options, be sure to check [The Project Customisation Guide]({{< ref "/features/customisation.md" >}})


### How I import a project from Github?

1. To start the importation project, you have to got to your project menu, and click on "New Project" button.

{{< figure src="/images/import-gh-step1.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

2. After that, you can select how to create the project, in this case we want to "Import project".

{{< figure src="/images/import-gh-step2.png" caption="Start import process" alt="Start import process" class="articlefigure" width="100%" >}}

3. You can select which importer do you want to use, in this case, you have to select the "GitHub" importer.

{{< figure src="/images/import-gh-step3.png" caption="Select importer" alt="Select importer" class="articlefigure" width="100%" >}}

4. As soon as you select the github importer, you will be redirected to the GitHub authorization page, to allow Taiga to access to your repositories (during the next day). You have to click "Authorize taigaio", to continue the process.

{{< figure src="/images/import-gh-step4.png" caption="Authorize access to GitHub" alt="Authorize access to GitHub" class="articlefigure" width="100%" >}}

5. Then you have to select which github repository want to import.

{{< figure src="/images/import-gh-step5.png" caption="Select GitHub repository" alt="Select GitHub repository" class="articlefigure" width="100%" >}}

6. Once you have selected the repository you have to define how you want to import the project. This include:

  * The title of the project.
  * The description of the project.
  * How do you want to import the issues in Github.
  * If the project is public or private
  * If you want to keep a link from your taiga User Stories to the original github issues.

{{< figure src="/images/import-gh-step6.png" caption="Fill new project information" alt="Fill new project information" class="articlefigure" width="100%" >}}

7. Before finish the import process you have to match your GitHub users with your Taiga users, this allow us to keep assignation, creation and comments author information correctly.

{{< figure src="/images/import-gh-step7.png" caption="Select users" alt="Select users" class="articlefigure" width="100%" >}}

8. Finally, you only have to click "Import" button to start the import process, this can take a while, so be patient.

{{< figure src="/images/import-gh-step8.png" caption="Confirm users selection" alt="Confirm users selection" class="articlefigure" width="100%" >}}

9. After the import process, you can access to your new created project that will looks like this.

{{< figure src="/images/import-gh-step9.png" caption="Imported project" alt="Imported project" class="articlefigure" width="100%" >}}


### Wich data is imported, and how?

  - Github Project as Taiga Project (Kanban, Scrum or Issues project).
  - Organization avatar as project avatar.
  - Github Issues as Taiga User Stories or Issues.
  - Collaborators as project members.
  - Tags and tags colors.
  - Comments.
  - Changes in state, milestone, assignation and tags.
  - Milestones as sprints.
  - Issues assignations as User Story/Issue assignation for the first, and User Story/Issue watchers for the rest.

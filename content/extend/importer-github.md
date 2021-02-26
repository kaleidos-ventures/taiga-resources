---
title: "Github Importer"
date: 2020-10-05T11:27:09+02:00
draft: false
categories:
  - "Extend Taiga"
thumbnail: "images/import-github.png"
thumbnail_home: "images/import-github.png"
---

***Disclaimer: Some Taiga product screenshots might refer to older Taiga releases. When in doubt, please follow the written instructions.***

### How I import a project from Github?

1. To start the importation project, you have to got to your project menu, and click on "Create Project" button.

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

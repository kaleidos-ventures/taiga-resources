---
title: "CSV reports"
date: 2020-10-05T11:27:09+02:00
draft: false
image: "images/post/post-3.jpg"
thumbnail: "images/contributions.png"
---

In Taiga you can make reports with some data and graph about your projects. To do that you can use your favorite spreadsheet app and the information about your user stories, tasks and issues in csv (*comma-separated values*) format.

You can obtain the information like a csv file or like a csv data url, one for epics, one for user stories, other for tasks and other for issues.

### Get a csv file:

1. Go to *Admin > Project > Reports*.
{{< figure src="/images/csv_reports_step1.png" caption="CSV Reports - Step 1" alt="CSV Reports - Step 1" class="articlefigure" >}}
2. Click *Generate URL* link if url doesn't exist yet.
{{< figure src="/images/csv_reports_step2.png" caption="CSV Reports - Step 2" alt="CSV Reports - Step 2" width="100%" class="articlefigure" >}}
3. Click *Download CSV* buttton to start the download of the csv file.

### ...in LibreOffice

1. Use the "Download csv" button and get a local copy of the file
2. Click *Insert > Sheet from file*
3. Enable the link option and click browse for selecting the downloaded file
{{< figure src="/images/libreoffice_csv.png" caption="CSV Reports in LibreOffice" alt="CSV Reports in LibreOffice" class="articlefigure" >}}

### Use csv data url...

1. Go to *Admin > Project > Reports*.
2. Click *Generate URL* link if url doesn't exist yet.
3. Copy the url (the icon on the right of the input is useful to select all text before press Ctrl+C).

### ...in Google Docs

1. Create a new spreadsheet document.
2. Use the function [IMPORTDATA()](https://support.google.com/docs/answer/3093335) with the generated URL and press *ENTER*.
{{< figure src="/images/csv_export_1.png" caption="CSV Reports - Google Drive - Step 1" alt="CSV Reports - Google Drive - Step 1" class="articlefigure" >}}
3. The information will appear automatically.
{{< figure src="/images/csv_export_2.png" caption="CSV Reports - Google Drive - Step 2" alt="CSV Reports - Google Drive - Step 2" width="100%" class="articlefigure" >}}

Remember that you can share the url but you should note that **anyone who knows it can download a report with no further authentication**.

You can expire an url by regenerating it because **only the last generated url will be valid for each type**. You can also delete it if you prefer.

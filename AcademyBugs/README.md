<h1 align="center">AcademyBugs Exploratory Testing</h1>

<p align="center">Finding and Reporting Bugs on a Demo E-commerce Website</p>

<p align="center">
<b>Download PDF Documentation:</b><br>
<a href="AcademyBugs_Exploratory_Testing_Valentina_Hatos.pdf"><b>[ English Version PDF ]</b></a><br>
<a href="Pruebas_Exploratorias_AcademyBugs_Valentina_Hatos.pdf"><b>[ Versión en Español PDF ]</b></a>
</p>

---

## Index

- [1. Introduction](#1-introduction)
- [2. Application Under Test](#2-application-under-test)
- [3. Testing Approach](#3-testing-approach)
- [4. Bugs Reported](#4-bugs-reported)
  - [4.1 Bug summary](#41-bug-summary)
  - [4.2 Bugs by category](#42-bugs-by-category)
  - [4.3 Example bug reports](#43-example-bug-reports)
- [5. Conclusion](#5-conclusion)
- [Project Files](#project-files)

---

## 1. Introduction

This project is an exploratory testing exercise from the ITF Manual Testing course. I tested the website AcademyBugs.com. The goal was to find as many bugs as possible and report them in JIRA.

AcademyBugs.com is a demo e-commerce website. It was created for practising bug finding and bug reporting.

| Item | Details |
|---|---|
| Student | Valentina Hatos |
| Role | QA Tester |
| Application | AcademyBugs.com |
| Module tested | Find Bugs section (product pages, cart, comments, filters) |
| Tools | JIRA, Better PDF Exporter for Jira |
| Date | March 2022 |

---

## 2. Application Under Test

| Item | Details |
|---|---|
| Application | AcademyBugs.com |
| URL | https://academybugs.com/ |
| Section tested | Find Bugs (product list, product details, cart, checkout, comments) |
| Testing type | Exploratory testing |
| Bug tracking | JIRA |

---

## 3. Testing Approach

I used exploratory testing. I didn't write test cases in advance. Instead, I explored the website and checked how each function worked.

I followed the main flows a user goes through:

- opening a product and reading its details;
- changing the currency;
- filtering products by price;
- changing the number of results shown;
- adding a product to the cart and going to checkout;
- posting a comment;
- sharing a product on Twitter;
- signing in from the bottom of the page.

I also checked the layout of the pages: alignment, spacing and overlapping elements.

For each problem found, I created a bug in JIRA. I created a story called "AcademyBugs.com" (VALI-113) and linked all the bugs to it. In this way, all the bugs of the exercise are grouped in one place. At the end, I exported the bugs to a PDF report: [AcademyBugs_Report.pdf](AcademyBugs_Report.pdf).

---

## 4. Bugs Reported

### 4.1 Bug summary

I reported 10 bugs: 2 with High priority and 8 with Medium priority. All of them have the status Backlog.

| Bug | Title | Priority |
|---|---|---|
| VALI-105 | The page freezes when changing the currency | High |
| VALI-106 | The short description and description of the product are not in English | Medium |
| VALI-107 | The page becomes unresponsive when clicking on Post Comment button | High |
| VALI-108 | The Filter By Price doesn't work in product details page | Medium |
| VALI-109 | The Twitter share button in the product details page is broken | Medium |
| VALI-110 | Item images have unnecessary space underneath | Medium |
| VALI-111 | Sign In button overlaps the footer | Medium |
| VALI-112 | There is a big space before the last letter in Return to Store | Medium |
| VALI-114 | Sign In button is misaligned vertically | Medium |
| VALI-115 | The page becomes unresponsive when clicking on the numbers of results | Medium |

### 4.2 Bugs by category

I grouped the bugs into three categories:

| Category | Bugs | Description |
|---|---|---|
| Functional | VALI-105, VALI-107, VALI-108, VALI-109, VALI-115 | A function doesn't work: the page freezes, the filter doesn't apply, a button opens an error page. |
| Content | VALI-106 | The product text is not in the expected language. |
| UI / Layout | VALI-110, VALI-111, VALI-112, VALI-114 | Visual problems: extra spacing, overlapping or misaligned elements. |

I assigned High priority to the two bugs that block the user completely: the page freezes and the user can't continue. The other bugs got Medium priority.

### 4.3 Example bug reports

Each bug report contains the steps to reproduce, the expected result, the actual result and the priority. Below are two examples.

| Field | VALI-105 |
|---|---|
| Title | The page freezes when changing the currency |
| Type / Priority | Bug / High |
| Steps to reproduce | 1. Open the website. 2. Go to Find Bugs module. 3. Open a product. 4. Change the currency from the Select a currency dropdown. |
| Expected result | The currency is changed. |
| Actual result | The page freezes when changing the currency. |

| Field | VALI-111 |
|---|---|
| Title | Sign In button overlaps the footer |
| Type / Priority | Bug / Medium |
| Steps to reproduce | 1. Open the website. 2. Go to Find Bugs module. 3. Open a product. 4. Check the Sign In button at the bottom of the page. |
| Expected result | The Sign In button is above the footer. |
| Actual result | The Sign In button overlaps the footer. |

Complete bug reports: [AcademyBugs_Report.pdf](AcademyBugs_Report.pdf)

---

## 5. Conclusion

During this exercise, I explored the Find Bugs section of AcademyBugs.com and reported 10 bugs in JIRA. Five bugs are functional, one is related to content and four are related to the layout.

This exercise helped me practise exploratory testing. I also practised writing clear bug reports, with steps to reproduce, expected and actual results, and a priority for each bug.

---

## Project Files

| File | Description |
|---|---|
| [AcademyBugs_Exploratory_Testing_Valentina_Hatos.pdf](AcademyBugs_Exploratory_Testing_Valentina_Hatos.pdf) | Project documentation (English) |
| [Pruebas_Exploratorias_AcademyBugs_Valentina_Hatos.pdf](Pruebas_Exploratorias_AcademyBugs_Valentina_Hatos.pdf) | Project documentation (Spanish) |
| [AcademyBugs_Report.pdf](AcademyBugs_Report.pdf) | Complete bug reports exported from JIRA |

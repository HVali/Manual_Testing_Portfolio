# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/ 

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/ 

**The final project will be split into 2 sections: [Testing section](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#final-project-for-itf-manual-testing-course) and [SQL section](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/README.md#2-sql-section).**

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications

The below Story was created in JIRA and describes the functional specifications of the Employee module, for which the final project is performed upon: [Final_project_Functional_specifications.png](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Final_Project_Functional_Specifications.pdf).

![image](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Final_Project_Functional_Specifications.png)

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the X module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated

* Project manager - Maria Macavei
* Product owner - David Dafinescu 
* Software developer - Adrian Adagiu
* QA Engineer - Valentina Hatos

#### 1.1.2 Entry criteria defined

* functional specifications are defined
* roles needed for the project are allocated
* initial project risks were detected and mitigated

#### 1.1.3 Exit criteria defined

* number of unresolved bugs is insignificant or they have low priority
* all tests have been executed
* all resolved bugs have been re-tested and approved by the QA team
* deadline was reached
* no detected major risk remained un-mitigated
* exploratory regression testing must be performed on the PIM module, which includes the Employee section

#### 1.1.4 Test scope

* __Tests in scope:__ All the feature of Employee module which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing
* __Tests not in scope:__ performance testing, integrations of the Employee module with other modules, compatibility testing with multiple browsers


#### 1.1.5 Risks detected

* Project risks: lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment 
* Product risks: validation constraints on the fields might be too restrictive to the end-user 

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

Variou periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken.
The following status report was generated after 40% of the test cases were executed, on 19th of May 2022:

![image](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Monitoring_and_Control_Test_Metrics.png)

![image](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Monitoring_and_Control_Traceability_Matrix.png)

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the Employee module. The following test conditions were found:

 * Enter data only for mandatory fields and check that the employee is created/updated
 * Enter data for all available fields and check that the employee is created/updated
 * Leave mandatory fields empty and check that the employee cannot be created/updated
 * Check that an employee can be deleted
 * View employee details and check they are correct
 * View all employees in a list
 * Check all validation constraints for the fields

## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are boundary value analysis, equivalence partitioning and use case testing.

The following checklist was generated:[Checklist.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Checklist.pdf) and test cases [Test_cases.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Test_cases.pdf)


**Test cases:**
-> enter here test cases or at least the titles


The test cases with steps can be viewed here: [test_cases.pdf]()

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* enter here what needs to be ready for the test execution to begin

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [cycle_summary_execution.pdf]()
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [created_bugs.pdf]()
    *  enter here bug titles


## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv]()
* Test execution chart was generated, the final report shows.... -> describe the final report

-> enter here test execution report/chart

# 2 SQL section

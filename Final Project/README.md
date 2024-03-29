# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/ 

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/ 

**The final project will be split into 2 sections: [Testing section](https://github.com/HVali/Manual_Testing_Portfolio/tree/main/Final%20Project#1-testing-section) and [SQL section](https://github.com/HVali/Manual_Testing_Portfolio/tree/main/Final%20Project#2-sql-section).**

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications

The below Story was created in JIRA and describes the functional specifications of the Employee module, for which the final project is performed upon: [Final_project_Functional_specifications.png](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Final_Project_Functional_Specifications.pdf).

![image](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Final_Project_Functional_Specifications.png)

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Employee module from the OrangeHRM application. 

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
The following status report was generated after more than 50% of the test cases were executed, on 19th of May 2022:

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

The following checklist was generated: [Checklist.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Checklist.pdf) and test cases: [Test_cases.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Test_cases.pdf)


The test cases with steps can be viewed here: [Employee_test_cases_with_steps.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Employee_test_cases_with_steps.pdf)


For the Employee API, the following checklist was generated: [API_test_checklist.csv](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/API_test_checklist.csv)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created 
* Test cases were added to the cycle summary
* Postman collection with the dependents API methods was created 
* Authorization token was created for accessing the API

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [Employee_cycle_summary_execution.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Employee_cycle_summary_execution.pdf)
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [Employee_created_bugs.pdf](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Employee_created_bugs.pdf)
    *  VFP-49 Date of Birth field accepts a date greater than the current date
    *  VFP-50 License Expiry Date field accepts a date smaller than the current date
    *  VFP-51 Photograph upload section accepts .jpg/.png/.gif image larger than 1MB
    *  VFP-52 First Name, Middle Name and Last Name input fields doesn't accepts 55
characters, in Add Employee module
    *  VFP-53 First Name, Middle Name and Last Name input fields doesn't accepts 55
characters, in Edit Personal Details module

* API tests are executed based on the checklist. The collection used can be found here: [JSON file with the collection of requests created for the Employee API](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Orange%20HRM%20API%20Collection.postman_collection.json)
* Full regression testing is needed after the bugs are fixed


## 1.7 Test Completion


* As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Traceability_Matrix.xlsx)
* Test execution chart was generated, the final report shows that a number 5 tests have failed of a total of 44 
* A number of 44 test cases were planned for execution and all of them were executed
* A number of 5 total bugs were found, from which the priority is: 2 are high and 3 are low

![image](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/Test_Execution_Chart.png)

# 2 SQL section

Created a database named 'orangehrm' and a number of two tables named 'departments' and 'employees' with all the columns needed to save data per specifications. Performed different queries inside the sql file: [orangehrm.sql](https://github.com/HVali/Manual_Testing_Portofolio/blob/main/Final%20Project/orangehrm%20database.sql)

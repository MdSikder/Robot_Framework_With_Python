# Gateway Integration Tester

This software is supposed to run a series of tests against the executables and modules of the Gateway software.

## Setup

Install the required python modules with:

```
$> pip3 install -r requirements.txt
```

##  Running the tests

```
$> robot *.robot
```

The output is saved in the files _log.html_ and _report.html_.

##  Formatting

Upon changes, please run 

```
$> robotidy --transform AlignTestCasesSection --transform IndentNestedKeywords --transform  OrderTags --transform AlignTemplatedTestCases --transform  AlignKeywordsSection *.robot
```

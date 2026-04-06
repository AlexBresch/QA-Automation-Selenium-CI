# QA Automation Project – Selenium, Pytest, CI
[![Run UI Tests](https://github.com/AlexBresch/QA-Automation-Selenium-CI/actions/workflows/test.yml/badge.svg)](https://github.com/AlexBresch/QA-Automation-Selenium-CI/actions/workflows/test.yml)

## Overview

This project demonstrates end-to-end test automation of a real-world e-commerce website using Selenium and Python.

The focus is on validating system behaviour and data consistency, not only UI interactions. The tests are designed to reflect realistic user flows and to verify that the system behaves correctly under dynamic conditions.

---

## What is being tested

The test suite covers core user journeys and system behaviour, including:

* Homepage availability and basic validation
* Product search functionality and result validation
* Navigation through dynamic menus
* Store selection and session-dependent behaviour
* Handling of out-of-stock products
* Adding products to cart

The tests aim to verify both functionality and correctness of business logic.

---

## Testing approach

Tests are structured around user behaviour and end-to-end flows rather than isolated UI elements.

Key aspects include:

* Validation of complete flows (search → product → cart)
* Handling of dynamic and asynchronous UI behaviour
* Retry and wait strategies to reduce flakiness
* Assertions focused on system correctness and consistency

The approach reflects testing in integration-heavy systems, where behaviour and data integrity are critical.

---

## Tech stack

* Python
* Selenium WebDriver
* Pytest
* GitHub Actions (CI)
* Jenkins (previously used for CI)

---

## CI / Automation

Tests are automatically executed using GitHub Actions on push to `main` and on pull requests.

The project has also been executed in Jenkins, demonstrating experience with both pipeline-based and repository-based CI workflows.

---

## How to run locally

### 1. Clone the repository

```
git clone https://github.com/AlexBresch/QA-Automation-Selenium-CI
cd QA-Automation-Selenium-CI
```

### 2. Create virtual environment

```
python -m venv .venv
```

### 3. Activate environment

Windows:

```
.venv\Scripts\activate
```

Mac/Linux:

```
source .venv/bin/activate
```

### 4. Install dependencies

```
pip install -r requirements.txt
```

### 5. Run tests

```
pytest -v
```

---

## Optional parameters

Tests support runtime configuration:

```
pytest --browser=chrome --headless=true
```

Supported browsers:

* chrome
* firefox
* edge

---

## What this project demonstrates

* Test design for realistic user flows
* Handling of dynamic and unstable UI elements
* Validation of business logic, not only UI elements
* Structured test execution using pytest
* Cross-browser test execution in CI (Chrome, Firefox, Edge matrix)
* CI integration with GitHub Actions and Jenkins
* Practical use of Python for QA automation

---

## Notes

* Tests run against a live public website, and behaviour may change over time
* Some retry logic is implemented to handle dynamic frontend behaviour
* Chrome is currently used as the primary baseline browser for day-to-day validation
* Firefox and Edge are included in CI matrix runs, but can be intermittently flaky due to live-site and browser-specific behaviour

---

## About

This project is part of my work transitioning toward QA Automation and Test Engineering roles, building on experience in integration-heavy systems, data validation, and structured testing in production environments.

The focus is on combining strong testing fundamentals with automation where it adds value.

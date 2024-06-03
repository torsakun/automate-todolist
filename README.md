# Automate-Todolist


This project contains automated tests for the ToDo List website using Robot Framework and SeleniumLibrary.

## Prerequisites

- Python 3.x
- pip

## Installation

1. Clone the repository
    ```
    git clone <repository_url>
    ```
2. Navigate to the project directory
    ```
    cd ToDoListTesting
    ```
3. Install the dependencies
    ```
    pip install -r requirements.txt
    ```

## Running the Tests

To run the tests, use the following command:

robot -d TestResults TestCases/TodoList.robot

File Structure

- `TestCases/`: Contains the main test file.
- `TestData/`: Contains the main data file.
- `Resources/`: Contains shared resources like keywords and locators.
- `TestResults/`: Contains the test results.
- `README.md`: This file.
- `Requirements.txt`: List of dependencies.
# User Login and Logout Logger

This repository contains scripts to log user login and logout events on a Windows machine. The logs are stored in a text file for later review.

## Introduction

This project provides a simple solution for tracking user logins and logouts on a Windows machine. It can be particularly useful in environments where monitoring user activity is required, such as shared computers or workstations in an office setting.

## Files

- **LogUserLogin.bat**: Logs the user login time and username.
- **LogUserLogout.bat**: Logs the user logout time and username.
- **openLOG.vbs**: Opens the log file directly.

## Setup Instructions

### Prerequisites

- **Windows OS**: The scripts are designed to work on Windows.
- **Administrator Privileges**: Required to set up tasks in Task Scheduler.

### Step 1: Download the Scripts

Clone this repository to your local machine or download the scripts directly.

### Step 2: Place the Scripts

Place the `.bat` and `.vbs` files in a folder on your desktop or another preferred location.

### Step 3: Edit the Script Paths

Edit the paths in the `.bat` scripts to ensure they point to the correct location of your `log.txt` file.

### Step 4: Create the Log File

Create an empty `log.txt` file in the directory where your scripts are located. This file will store the log entries.

### Step 5: Set Up Task Scheduler

1. **Open Task Scheduler**:
   - Press `Win + R`, type `taskschd.msc`, and press Enter.

2. **Create a Task for User Login**:
   - Click on `Create Task`.
   - Name the task (e.g., "LogUserLogin").
   - Go to the `Triggers` tab, click `New`, and select `At log on`.
   - In the `Actions` tab, click `New`, and select `Start a program`.
   - Browse to the location of `LogUserLogin.bat` and select it.
   - Click `OK` to save the task.

3. **Create a Task for User Logout**:
   - Repeat the steps above, but set the trigger to `On disconnect from user session` or `On workstation lock`, depending on your needs.
   - Browse to the location of `LogUserLogout.bat` and select it.
   - Click `OK` to save the task.

### Step 6: Test the Setup

Log off and log back in to your account. The `log.txt` file should now contain entries recording the login and logout events.

### Step 7: View the Logs

You can view the log file by double-clicking on `openLOG.vbs`, which will open the `log.txt` file in your default text editor.

## Customization

If you need to customize the scripts:

- **Log File Location**: Change the `log_file` variable in the `.bat` scripts to point to a different directory if needed.
- **Log Format**: You can modify the `echo` commands in the scripts to change how the log entries are formatted.
- **Additional Actions**: You can add more commands to the `.bat` scripts if you want to perform additional actions when a user logs in or out, such as sending an email notification or logging to a remote server.

## Troubleshooting

- Ensure that the paths in the scripts are correct.
- Check that the Task Scheduler tasks are enabled and have the correct triggers.
- If the log file is not being updated, run the scripts manually to check for errors.

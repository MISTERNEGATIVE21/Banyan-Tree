# RPM-OSTree Manager

A simple, menu-driven Bash script for managing your system with `rpm-ostree`. This script provides an easy-to-use interface for performing common `rpm-ostree` tasks such as upgrading the system, installing and removing packages, switching branches, and more.

## Features

- **Check System Status:** Quickly view the current state of your system.
- **Upgrade System:** Upgrade to the latest version of your base operating system image.
- **Install/Uninstall Packages:** Add or remove packages with ease.
- **Remove/Replace Base Packages:** Manage the base system packages by removing or replacing them.
- **Switch Branches:** Rebase to a different operating system branch.
- **Rollback:** Rollback to a previous deployment if something goes wrong.
- **Deploy Specific Commit:** Deploy a specific OSTree commit by its hash.
- **Apply Changes Live:** Apply changes to the live system without requiring a reboot.
- **Clean Up Old Deployments:** Free up disk space by cleaning up old deployments.

## Requirements

- A Linux-based system with `rpm-ostree` installed.

## Usage

1. **Clone this repository:**

   ```bash
   git clone <repository-url>
   cd <repository-directory> 

2. **chmod +x rpm-ostree-manager.sh:**

   ```bash 
    chmod +x rpm-ostree-manager.sh 
3. **Run the script:**

   ```bash 
   ./rpm-ostree-manager.sh

## Quick Start with Curl

You can quickly download and run the `rpm-ostree-manager.sh` script using `curl`:

```bash

curl -O https://raw.githubusercontent.com/MISTERNEGATIVE21/Banyan-Tree/master/banyan.sh
chmod +x banyan.sh
./banyan.sh




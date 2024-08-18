#!/bin/bash

# Function to display the menu
show_menu() {
    echo "========================================"
    echo "           RPM-OSTree Management"
    echo "========================================"
    echo "1. Check System Status"
    echo "2. Upgrade System"
    echo "3. Install a Package"
    echo "4. Uninstall a Package"
    echo "5. Remove a Base Package"
    echo "6. Replace a Base Package"
    echo "7. Switch to a Different Branch"
    echo "8. Rollback to Previous Deployment"
    echo "9. Deploy a Specific Commit"
    echo "10. Apply Changes to Live System"
    echo "11. Clean Up Old Deployments"
    echo "12. Exit"
    echo "========================================"
}

# Function to handle user input
read_choice() {
    local choice
    read -p "Enter your choice [1-12]: " choice
    case $choice in
        1) check_status ;;
        2) upgrade_system ;;
        3) install_package ;;
        4) uninstall_package ;;
        5) remove_base_package ;;
        6) replace_base_package ;;
        7) rebase_system ;;
        8) rollback_system ;;
        9) deploy_commit ;;
        10) apply_live ;;
        11) cleanup_deployments ;;
        12) exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac
}

# Function definitions for each option
check_status() {
    echo "Checking system status..."
    rpm-ostree status
}

upgrade_system() {
    echo "Upgrading system..."
    rpm-ostree upgrade
}

install_package() {
    read -p "Enter the package name to install: " package
    echo "Installing package: $package..."
    rpm-ostree install $package
}

uninstall_package() {
    read -p "Enter the package name to uninstall: " package
    echo "Uninstalling package: $package..."
    rpm-ostree uninstall $package
}

remove_base_package() {
    read -p "Enter the base package name to remove: " package
    echo "Removing base package: $package..."
    rpm-ostree override remove $package
}

replace_base_package() {
    read -p "Enter the package name to replace: " package
    echo "Replacing base package: $package..."
    rpm-ostree override replace $package
}

rebase_system() {
    read -p "Enter the new branch to switch to: " branch
    echo "Rebasing to branch: $branch..."
    rpm-ostree rebase $branch
}

rollback_system() {
    echo "Rolling back to the previous deployment..."
    rpm-ostree rollback
}

deploy_commit() {
    read -p "Enter the commit hash to deploy: " commit
    echo "Deploying commit: $commit..."
    rpm-ostree deploy $commit
}

apply_live() {
    echo "Applying changes to the live system..."
    rpm-ostree ex livefs
}

cleanup_deployments() {
    echo "Cleaning up old deployments..."
    rpm-ostree cleanup -p
}

# Main loop
while true; do
    show_menu
    read_choice
    echo "Press any key to return to the menu..."
    read -n 1
    clear
done

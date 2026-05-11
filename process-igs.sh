#!/bin/bash

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Save the initial working directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Base directory
BASE_DIR="igs"

# Check if igs directory exists
if [ ! -d "$BASE_DIR" ]; then
    echo -e "${RED}Error: $BASE_DIR directory not found${NC}"
    exit 1
fi

echo "Processing subdirectories in $BASE_DIR..."
echo ""

# Process each subdirectory
for dir in "$BASE_DIR"/*/ ; do
    if [ ! -d "$dir" ]; then
        continue
    fi

    dir_name=$(basename "$dir")
    echo -e "${GREEN}=== Processing $dir_name ===${NC}"

    cd "$dir"

    # Check if repo file exists
    if [ -f "repo" ]; then
        repo_url=$(cat repo)
        echo "Repository URL: $repo_url"

        # Check if branch file exists
        if [ -f "branch" ]; then
            branch=$(cat branch)
            echo "Branch: $branch"
        else
            echo -e "${YELLOW}Warning: branch file not found, using default branch${NC}"
            branch="main"
        fi

        # Use the resources directory as the target
        repo_dir="resources"

        # Check if repository is already cloned
        if [ -d "$repo_dir/.git" ]; then
            echo -e "${YELLOW}Repository already exists, skipping clone${NC}"
            cd "$repo_dir"
            git fetch
        else
            echo "Cloning repository into resources folder..."
            git clone "$repo_url" "$repo_dir"
            cd "$repo_dir"
        fi

        # Checkout the specified branch
        echo "Checking out branch: $branch"
        git checkout "$branch"
        git pull origin "$branch" || true

        # Go back to the subdirectory
        cd ..
    else
        echo "No repo file found, skipping git operations"
    fi

    # Check if migration-config.json exists
    if [ -f "migration-config.json" ]; then
        echo "Running fhir-r6-migrate..."
        fhir-r6-migrate --config "migration-config.json"
        echo -e "${GREEN}Migration completed for $dir_name${NC}"
    else
        echo -e "${YELLOW}Warning: migration-config.json not found, skipping migration${NC}"
    fi

    # Return to script directory
    cd "$SCRIPT_DIR"

    echo ""
done

echo -e "${GREEN}All subdirectories processed!${NC}"

# Big Book of R

Welcome to the Big Book of R repository! This repository hosts a collection of nearly 400 R programming books, most of which are freely available. The project is open to contributions of both free and paid books.

## Getting Started

To work with this repository, you need to have some tools and libraries installed on your system:

### Prerequisites
- **Quarto:** We use Quarto to render the books. Make sure Quarto is installed on your machine.
- **R Programming Environment:** Ensure that R is installed.
- **R Libraries:** Install the following R libraries:
  ```R
  library(dplyr)
  library(tidyr)
  library(stringr)
  library(googlesheets4)
  library(readr)
- **R studio or Visual Studio Code (VS Code):** This project is best managed using R studio or VS Code.

### Repository Structure
- `_quarto.yml`: The primary configuration file that manages the rendering of books and calls all `.qmd` files.
- `chapters/`: Directory where individual `.qmd` files are stored after fetching data from the Google Sheets.
- `scripts/`:
  - `fetch_books.R`: Script to fetch book data from Google Sheets, create `.qmd` files in the `chapters` directory, and generate the `chapter_list.txt`.
  - `chapter_list.txt`: Text file containing the list of `.qmd` files with their paths, generated by `fetch_books.R`.
- HTML files: these are part of the book rendering process.

### Setting Up Your Local Environment

1. **Clone the repository to your local machine.**
   Use the git command to clone the repository:
   ```bash
   git clone [repository-url]
   ```

2. **Install all the prerequisites mentioned above.**
   Ensure that all necessary tools and libraries, as specified in the project documentation, are installed on your system.

3. **Ensure R and necessary libraries are installed.**
   Use the following commands in your R console to install the required R packages if not already installed:
   ```R
   install.packages("dplyr")
   install.packages("tidyr")
   install.packages("stringr")
   install.packages("googlesheets4")
   install.packages("readr")
   ```
### Automated process for new book entries

4. **Run the `fetch_books.R` script to automate data fetching.**
   This script automatically populates the `chapters` directory and generates the `chapter_list.txt` file. It is designed to facilitate the addition of new book entries without needing manual updates to the project structure:

5. **Preview the book locally.**
   Immediately after running the `fetch_books.R`, preview the book using:
   ```bash
   quarto preview
   ```
   This step ensures that the newly fetched content renders correctly without errors.

### Manual process for new chapter entries

6. **Update the Quarto book structure for new chapters.**
   If structural changes are required due to the addition of new chapters, manually update the `_quarto.yml` file:
   - **Delete outdated content:**
     Remove all content in the `chapters` directory and the existing `chapter_list.txt` file.
   - **Re-run `fetch_books.R`:**
     Fetch the latest data to reflect the new chapter entries and generate updated `.qmd` files.
   - **Manually update `_quarto.yml`:**
     Incorporate changes from the new `chapter_list.txt` into `_quarto.yml` to align with the new chapter structure.
   - **Preview changes:**
     Run `quarto preview` to verify that all updates are rendered correctly before committing the changes to the repository.

This revised documentation now clearly separates the automated process for adding new book entries from the manual process required for new chapter entries, including necessary updates to the `_quarto.yml` configuration.

To set up GitHub Pages and GitHub Actions, please refer to the detailed guide available here:
[Setting Up GitHub Pages and Actions](https://quarto.org/docs/publishing/github-pages.html)

## Contribution Guidelines
We welcome contributions! If you wish to add books or suggest improvements:
- Please open an issue through this link: [Issue Tracker](https://github.com/oscarbaruffa/BigBookofR/issues).
- Follow the contribution guidelines provided in the repository.

## Additional Information
The metadata about the books is stored in a Google Sheet, accessible [here](https://docs.google.com/spreadsheets/d/1vufdtrIzF5wbkWZUG_HGIBAXpT1C4joPx2qTh5aYzDg).

For any further assistance, please refer to the issue tracker and the README within the repository.
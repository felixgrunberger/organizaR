#!/usr/bin/Rscript

# organizaR version 1.0
# Copyright (C) 2018 Felix Grünberger
#
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details. You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


# supress warnings
options(warn=-1)

#' Create a folder directory displayed as a message
#' @return Folder structure
#' @export
#' @import here
organizaR <- function(){
  message("Following folder structure is create in your directory:
├── code
|   ├── raw_code
|   └── final_code
├── data
|   ├── raw_data
|   └── tidy_data
├── figures
|   ├── exploratory_figures
|   └── explanatory_figures
└── products
└── documentation","\r",appendLF=FALSE)

  # >> CODE
  path<-paste(here(), "/code", sep = "")
  dir.create(file.path(path, "raw_code"), recursive = T, showWarnings = FALSE)
  dir.create(file.path(path, "final_code"), recursive = T, showWarnings = FALSE)

  # >> DATA
  path<-paste(here(), "/data", sep = "")
  dir.create(file.path(path, "raw_data"), recursive = T, showWarnings = FALSE)
  dir.create(file.path(path, "tidy_data"), recursive = T, showWarnings = FALSE)

  # >> FIGURES
  path<-paste(here(), "/figures", sep = "")
  dir.create(file.path(path, "exploratory_figures"), recursive = T, showWarnings = FALSE)
  dir.create(file.path(path, "explanatory_figures"), recursive = T, showWarnings = FALSE)

  # >> PRODUCTS
  path<-paste(here(), "/products", sep = "")
  dir.create(file.path(path, "documentation"), recursive = T, showWarnings = FALSE)
}

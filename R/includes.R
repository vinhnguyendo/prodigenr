
include_readmes <- function() {
    use_template(
        "base-README.md",
        "README.md",
        data = list(ProjectName = basename(fs::path_wd())),
        package = "prodigenr"
    )
    fs::dir_create("doc")
    use_template("doc-README.md", "doc/README.md", package = "prodigenr")
    fs::dir_create("data")
    use_template("data-README.md", "data/README.md", package = "prodigenr")
    use_template("R-README.md", "R/README.md", package = "prodigenr")
}

include_r_files <- function() {
    use_template("setup.R", "R/setup.R", package = "prodigenr")
    use_template("fetch_data.R", "R/fetch_data.R", package = "prodigenr")
}

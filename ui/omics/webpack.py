from invenio_assets.webpack import WebpackThemeBundle

theme = WebpackThemeBundle(
    __name__,
    ".",
    default="semantic-ui",
    themes={
        "semantic-ui": dict(
            entry={
                "omics_search": "./js/omics/search/index.js",
                "omics_deposit_form": "./js/omics/forms/index.js",
            },
            dependencies={},
            devDependencies={},
            aliases={
                "@js/omics": "./js/omics"
            },
        )
    },
)

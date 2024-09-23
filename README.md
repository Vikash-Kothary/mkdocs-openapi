# mkdocs-render-swagger-plugin
This is the [Mkdocs](https://www.mkdocs.org) plugin for rendering swagger &amp; openapi schemas using [Swagger UI](https://swagger.io/tools/swagger-ui/). It is written in Python.

[![GitHub branch checks state](https://img.shields.io/github/checks-status/bharel/mkdocs-render-swagger-plugin/main)](https://github.com/bharel/mkdocs-render-swagger-plugin/actions)
[![PyPI](https://img.shields.io/pypi/v/mkdocs-render-swagger-plugin)](https://pypi.org/project/mkdocs-render-swagger-plugin/)
[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/mkdocs-render-swagger-plugin)](https://pypi.org/project/mkdocs-render-swagger-plugin/)
[![codecov](https://codecov.io/gh/bharel/mkdocs-render-swagger-plugin/branch/main/graph/badge.svg?token=GXV70TL21V)](https://codecov.io/gh/bharel/mkdocs-render-swagger-plugin)

## Usage
Install the plugin using `pip install mkdocs-render-swagger-plugin`.

Add the following lines to your mkdocs.yml:

    plugins:
      - render_swagger

## Example

Here's an [example](https://docs.scarf.sh/api-v2/) (courtesy of Scarf) of how the plugin renders swagger.

### Referencing a local json

Place an OpenAPI json file in the same folder as the `.md` file.

Enter `!!swagger FILENAME!!` at the appropriate location inside the markdown file.

If you wish to reference any files on the filesytem (security risk), make sure
you enable `allow_arbitrary_locations` in the config (mkdocs.yml) like so:

    plugins:
      - render_swagger:
          allow_arbitrary_locations : true

### Referencing an external json

You may reference an external OpenAPI json using the following syntax: `!!swagger-http URL!!`.

## Explicit declaration of the Swagger JS library

You can explicitly specify the swagger-ui css and js dependencies if you wish to not use the unpkg CDN.

To specify this use `javascript` and `css` in your mkdocs.yaml:
```yaml
plugins:
  - render_swagger:
      javascript: assets/js/swagger-ui-bundle.js
      css: assets/css/swagger-ui.css
```

## Contributing & Developing Locally

After downloading and extracting the `.tar.gz`, install this package locally using `pip` and the `--editable` flag:

```bash
pip install --editable ".[dev]"
```

You'll then have the `render-swagger` package available to use in Mkdocs and `pip` will point the dependency to this folder. You are then able to run the docs using `mkdocs serve`. Make sure you restart the process between code changes as the plugin is loaded on startup.

## MkDocs plugins and Swagger api

The Render Swagger MkDocs plugin uses a set of extensions and plugin APIs that MkDocs and Swagger UI supports.
You can find more info about MkDocs plugins and Swagger UI on the official website of [MkDocs](https://www.mkdocs.org/user-guide/plugins/) and [SwaggerUI](https://github.com/swagger-api/swagger-ui/blob/master/docs/customization/plugin-api.md).

The input OpenAPI files processed by the plugin should conform to the [OpenAPI specification](https://swagger.io/specification/). It is generated by a few projects such as [pydantic](https://pydantic-docs.helpmanual.io/), [FastAPI](https://fastapi.tiangolo.com/) and others.

</br>
<small>
Disclaimer: This plugin is unofficial, and is not sponsored, owned or endorsed by mkdocs, swagger, or any other 3rd party.</br>
Credits to @aviramha for starting this project.
</small>

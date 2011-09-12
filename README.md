# railsapp

This is an application template for Rails that sets up projects with the following changes from the default:

* Adds .gitignore entries for SimpleCov coverage, database.yml, and .env.
* Makes example files for ones that are .gitignored: database.yml and .env.
* Removes useless files: public.html, rails.png, and the doc directory.
* Changes the README to a blank Markdown file.
* Changes application asset manifest files to SCSS and CoffeeScript.
* Adds the HTML5 reset CSS with cleaned up whitespace and other small fixes.
* Moves the `javascript_include_tag` in the application layout to the bottom of the body and always loads jQuery from Google.
* Updates the Gemfile to use various gems including RSpec, Guard, Thin, and Foreman.
* Installs RSpec.
* Initializes a Guardfile and guard-rspec.
* Initializes a Git repository for the app.

## Usage

Given that this repository lives in ~/Code, create a new application by running:

```bash
rails new <app_name> --skip-bundle -m ~/Code/railsapp/template.rb
```

To simplify this process, consider adding a Bash alias, like this:

```bash
alias railsapp="rails new $1 --skip-bundle -m ~/Code/railsapp/template.rb"
```

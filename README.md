# railsapp

This is an application template for Rails that sets up projects with some useful changes from a stock install.

## Features

* Ignores SimpleCov coverage directory, database.yml, and .env from Git.
* Makes example files for ones that are ignored from Git.
* Removes useless files: public.html, rails.png, and the doc and test directories.
* Changes the README to a blank Markdown file.
* Changes application asset manifest files to SCSS and CoffeeScript.
* Adds the HTML5 reset CSS with cleaned up whitespace and other small fixes.
* Moves the `javascript_include_tag` in the application layout to the bottom of the body and always loads jQuery from Google.
* Uses RSpec instead of Test::Unit.
* Uses Haml instead of ERB.
* Sets up Foreman and Guard to run your development server, RSpec + Spork, and Jasmine all with one command for continuous testing.
* Initializes a Git repository for the app.

## Usage

Given that this repository lives in ~/Code, create a new application by running:

```bash
rails new <app_name> --skip-bundle -m ~/Code/railsapp/template.rb
```

To simplify this process, consider adding a Bash function, like this:

```bash
function railsapp { rails new $1 --skip-bundle -m ~/Code/railsapp/template.rb; }
```

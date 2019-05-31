### Welcome to D&D Character Creator

The purpose of this app is to allow users to organize a list of characters and the spells that belong to those characters.

  There are three object classes that the user can work with.
  - User class
    * Has login information, a password and a user login name.
  - Character class
    * Has an attribute for name, race, and class_name.  
  - Spell class
    * Has an attribute for name and a description of what the spell does.
  Each Class is linked through a 'has many' join table.

  Controlling access to each class is done through a series of TTY selection prompts.

## Installation

Run the following commands in the console:
  bundle install
  rake db:seed          <!--For demonstration purposes:-->

## To Run

In the main directory run the following command in the console:
  ruby bin/run.rb

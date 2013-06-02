# App-A-Day -> Grades (You name it)

![Grades App Screenshot](http://i.imgur.com/SQ0Xwah.png)

## What it does

This app keeps track of assignments and students. Students can receive grades
on assignments.

## Principles

- Nested Resources: Grades are nested under assignments
- Associations: The `grades` table connects students with assignments, using
  `has_many :through =>`
- Scopes

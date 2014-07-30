$Id$

; API

api = 2

; Core

core = 7.x

; Drupal project.
projects[drupal][type] = core
projects[drupal][version] = 7.28

; This profile is the one that we actually are going to use.
projects[market][type] = profile
projects[market][download][type] = git
projects[market][download][url] = git@github.com:nodeone/profile-mat.git
projects[market][download][branch] = master
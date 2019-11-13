# Welcome to Travelatr!

Travelatr is company with a singular vision: to enable people from all walks of life to write about their travels to spectacular destinations all over the globe in order to foster a sense of global community and a heightened cultural awareness.

Luckily, another developer has already started the job. We have a model for blogger and a model for destination. Visiting '/bloggers' displays all of the bloggers, and visiting '/destinations' displays all of the destinations. We just don't have a way to associate a blogger with a destination. Remember that bloggers can Post about many destinations, and a destination can have many different bloggers visit it.

## Instructions

Before you begin, fork and clone this repo, run rake 

db:migrate and rake db:seed to get started.

## Deliverables

1.) To log that a specific blogger has visited a particular destination, we'll need to store some additional data. Make the necessary updates to the schema so that a blogger can post about many destinations, as well as an destination being able to have many bloggers through posts. The blog post should also have a way to store the bloggers rating for that destination in the range of 1 to 5.

2.) As a user, I should be able to fill out a form to create a new blog post. I should be able to choose an existing blogger, an existing destination, add a rating and add some blog content. Upon successfully creating a blog post, I should be redirected to the selected destinations show page.

3.) On the bloggers index page, clicking on a bloggers name should take us to a detail view about each blogger. This View should include the bloggers name and list of destinations they have blogged about.

4.) As a user, I should be able to view all of the bloggers for a particular destination. This means that we'll need a destinations show page that lists all of the bloggers who have written blog posts about that destination.

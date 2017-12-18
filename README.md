# [Agenda Edu - Message Box]
![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[ ![Codeship Status for igormelao/agendaedu-message-box](https://app.codeship.com/projects/2df5c610-c67c-0135-9eb9-1e50aff0702d/status?branch=master)](https://app.codeship.com/projects/261193)

![](https://ci6.googleusercontent.com/proxy/bjCBAJzYvMX4NZKakl0Q7DSKEYfJ-i3s6ZLmYNjCCKypX3EiWHhyGsAAPda_xL2FXToTe9SxPRWJ-83kYxbAaZVq7-CIyFCTaUPystNKB3chJIOR9crPh0yOnqF8UL3mQjpIX5dnCqv4kMuhuA24pYLDD2VlPDc=s0-d-e1-ft#https://s3.us-west-2.amazonaws.com/agenda-public/email-signature/logo-agendakids-to-edu-final.gif)

<div>
  <h4>Have an incredible communication experience with students and caregivers.</h4>
</div>

# Basic Overview

<p>Agenda Edu Message Box is a web system that allows Agenda Edu customers to write, read and archive messages in a simple, intuitive and fast way. It is possible to send messages to other clients by increasing the sharing of experiences with both our system and the care of your family. With its extremely simple interface, it is possible, all the system's features in seconds, bringing a productivity gain and time to your day-to-day.</p>


Enjoy it!


# Require
```
  * Rails 5.0.1 API
  * Ruby 2.2.3
  * Docker
  * Docker Compose
  * Postgres
  * Devise
  * Bootstrap-sass
  * FFaker
  * FactoryBot
  * Rspec
  * Shoulda-matchers
  * Spring-commands-rspec
  * rails-controller-testing
```


# Getting Started

### 1. Do a fork at original repository
```
  git@github.com:igormelao/agendaedu-message-box.git
```

### 2. Clone your fork at a local repository

### 3. Build you project with docker-compose
```
   $ docker-compose build      
```

### 4. Start docker-compose
```
   $ docker-compose up
```

### 4. Run all migrations
```
   $ docker-compose run --rm app bundle exec rails db:create db:migrate      
```

### 5. How to execute other commands
```
$ docker-compose run --rm app bundle exec commandName
```

### 6. Install new gems
```
Always when you install a new gem execute step 3
```

### 7. Start APP
```
$ docker-compose up
```

### 8. Test App
```
$ docker-compose run --rm app bundle exec rspec
```

## How to contribute to the project

### 1. Add the remote repository source at your local repositoy
```
$ git remote add upstream git@github.com:igormelao/agendaedu-message-box.git
```

### 2. Sync your repository with the original repository
```
$ git fetch upstream
```

### 3. Update your local repository
```
$ git checkout master
$ git merge upstream/master
```

### 4. Work on it and send your changes
```
$ git push origin master
```

### 5. Do a pull request at your fork on GitHub


<h1>\\_o_// HAO! Live long and prosper!</h1>

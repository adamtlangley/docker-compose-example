# docker-compose-example

`docker compose up`

When running the project everything works fine and the router binds to port 80 which the allows
you to curl to it with different Host headers to reach the individual containers.


`curl http://127.0.0.1`

PAGE NOT FOUND - router

`curl http://127.0.0.1 -H "Host: www.newchallenge.ctf"`

I AM THE WEBSITE


`curl http://127.0.0.1 -H "Host: api.newchallenge.ctf"`

I AM THE API

`curl http://127.0.0.1 -H "Host: dashboard.newchallenge.ctf"`

I AM THE DASHBOARD

### What I want....

What I want to do it run multiple instances of this docker compose setup and bind the router to port 80,81,82,83 and so on 
but have all the instances to be independent of each other so if data changes through instance bound to port 80 it won't be
shown on the instance bound to port 81 or 82 etc. 

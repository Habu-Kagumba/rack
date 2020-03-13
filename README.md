# Learning Rack

Running the rack server

```sh
$ ruby minimal_rack.rb
```

In another terminal

> Using httpie in my machine

###### GET Requests
```ruby
# GET
$ http :9292

HTTP/1.1 200 OK
Content-Length: 13
Content-Type: habu/v2

Got GET req.
```

```ruby
# POST
$ http POST :9292

HTTP/1.1 200 OK
Content-Length: 13
Content-Type: habu/v2

Got POST req.
```

```ruby
# PUT
$ http PUT :9292

HTTP/1.1 200 OK
Content-Length: 13
Content-Type: habu/v2

Got PUT req.
```

```ruby
# DELETE
$ http DELETE :9292

HTTP/1.1 200 OK
Content-Length: 13
Content-Type: habu/v2

Got DELETE req.
```

```ruby
# PATCH to demonstrate a simple Rack middleware
$ http PATCH :9292

HTTP/1.1 405 Method Not Allowed
Content-Length: 27

PATCH Not yet supported :(
```

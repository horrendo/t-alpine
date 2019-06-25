# t-alpine

Test crystal running in Alpine Linux

## Installation

Build the docker image:

```
$ docker build -t t-alpine .
```

## Usage

Run the test crystal program in the docker image:

```
$ docker run --rm t-alpine
Unhandled exception: Invalid encoding: utf-8 (ArgumentError)
  from /usr/lib/crystal/core/iconv.cr:29:35 in 'initialize'
  from /usr/lib/crystal/core/iconv.cr:9:3 in 'new'
  from /usr/lib/crystal/core/io/encoding.cr:61:16 in 'initialize'
  from /usr/lib/crystal/core/io/encoding.cr:60:5 in 'new'
  from /usr/lib/crystal/core/io.cr:496:7 in 'decoder'
  from /usr/lib/crystal/core/io.cr:545:10 in 'gets_to_end'
  from /usr/lib/crystal/core/http/client/response.cr:81:15 in 'consume_body_io'
  from /usr/lib/crystal/core/http/client/response.cr:105:9 in 'from_io?'
  from /usr/lib/crystal/core/http/client.cr:562:5 in 'exec_internal_single'
  from /usr/lib/crystal/core/http/client.cr:548:5 in 'exec_internal'
  from /usr/lib/crystal/core/http/client.cr:544:5 in 'exec'
  from /usr/lib/crystal/core/http/client.cr:666:5 in 'exec'
  from /usr/lib/crystal/core/http/client.cr:698:7 in 'exec'
  from /usr/lib/crystal/core/http/client.cr:370:3 in 'post:headers:body'
  from src/t-alpine.cr:4:3 in '__crystal_main'
  from /usr/lib/crystal/core/crystal/main.cr:97:5 in 'main_user_code'
  from /usr/lib/crystal/core/crystal/main.cr:86:7 in 'main'
  from /usr/lib/crystal/core/crystal/main.cr:106:3 in 'main'
  from ???
```

## Contributing

1. Fork it (<https://github.com/your-github-user/t-alpine/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Steve Baldwin](https://github.com/your-github-user) - creator and maintainer

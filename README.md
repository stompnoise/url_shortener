Run

```sh
$ bundle install
$ bundle exec rake db:migrate
$ rails s
```
### API

get shortened url

post:
http://localhost:3000/api/v1/get_url

body:
{
	"url":"http://yoururl.com"
}

get url stats

post:
http://localhost:3000/api/v1/get_stats

body:
{
	"url":"http://localhost:3000/go/1"
}

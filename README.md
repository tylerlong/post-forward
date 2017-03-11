# post-forward

Create a `.env` file or set environment variable:

```
webhook_base_url=http://a-public-url/xxx
```

When never you post a request to '/yyy' of this app, the request will be forwarded to http://a-public-url/xxx/yyy.


## Why?

I can deploy this app to heroku, thus my app will have an address with https enabled.

`webhook_base_url` might not have https. I can use this app to expose an https url for `webhook_base_url`.

# php-heroku-docker-applyer

Enable your PHP project to deploy to Heroku via [Container Registry](https://devcenter.heroku.com/articles/container-registry-and-runtime).

## Installation

```bash
$ composer require --dev ttskch/php-heroku-docker-applyer:@dev
$ bin/php-heroku-docker-applyer <appname> # your Heroku app name
```

After this, following files are hard copied into your project. This library is just for copying files so you can composer-remove this library after this step.

```bash
.
├── .circleci
│   └── config.yml
├── .travis.yml
└── Dockerfile
```

Now you can deploy your project to Heroku by `heroku container:login && heroku container:push web`.

## Deployment via CircleCI or Travis CI

You can also deploy via CircleCI or Travis CI. For this, add following two environment variables to your CI platform.

| var | value |
| --- | --- |
| `DOCKER_USERNAME` | your Heroku email address |
| `DOCKER_PASSWORD` | your Heroku API key |

See also [Heroku document](https://devcenter.heroku.com/articles/container-registry-and-runtime#using-a-ci-cd-platform).

## That's it

Now you can deploy your project to Heroku via CircleCI or Travis CI. Enjoy!

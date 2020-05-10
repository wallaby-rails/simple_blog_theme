# Simple Blog Theme

Simple Blog Theme based on Bootstrap4 for Wallaby engine.

## Install

Add Simple Blog Theme to `Gemfile`.

```ruby
# Gemfile
gem 'simple_blog_theme', git: 'https://github.com/wallaby-rails/simple_blog_theme.git', branch: 'master'
```

And re-bundle.

```shell
bundle install
```

## Basic usage

Assume that you have the following model:

```ruby
class Blog < ActiveRecord::Base
end
```

To use this theme, you will need to do the following:

- establish the named resources route:

  ```ruby
  # config/routes.rb
  Rails.application.routes.draw do
    # ...
    resources :blogs
    # ...
  end
  ```

- define the controller for model `Blog`:

  ```ruby
  # app/controllers/blogs_controller.rb
  class BlogsController < ApplicationController
    include Wallaby::Resources
    self.theme_name = 'simple_blog_theme'
  end
  ```

Then restart rails server, and visit http://localhost:3000/blogs to give it a go!

Generally, this theme will detect the **author**, **title**, **summary**, **body**, **published_at** and **image** fields automatically.

However, if this theme doesn't get the fields right, the fields can be configured in blog resource decorator, for example:

```ruby
class BlogDecorator < Wallaby::ResourceDecorator
  # NOTE: author field should contain only string value
  index_field[:FIELD_NAME_FOR_AUTHOR][:is_author] = true

  # NOTE: title field should contain only string/text value
  index_field[:FIELD_NAME_FOR_TITLE][:is_title] = true

  # NOTE: summary field should contain only string/text value
  index_field[:FIELD_NAME_FOR_SUMMARY][:is_summary] = true

  # NOTE: published_at field should contain only date/time value
  index_field[:FIELD_NAME_FOR_PUBLISHED_AT][:is_published_at] = true

  # NOTE: image field should contain only active_storage value
  index_field[:FIELD_NAME_FOR_IMAGE][:is_image] = true

  # NOTE: body field should contain only string/text value
  index_field[:FIELD_NAME_FOR_BODY][:is_body] = true
end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

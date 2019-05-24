# Simple Blog Theme

Simple Wallaby blog theme based on Bootstrap4.

> NOTE: it doesn't come with pagination.

## Usage

Assume that you have the following model:

```ruby
class Blog < ApplicationRecord
end
```

To use this theme, you will need to do the following:

- establish the named resources route:

  ```ruby
  # config/routes.rb
  Rails.application.routes.draw do
    # ...
    wresources :blogs
    # ...
  end
  ```

- define the controller for model `Blog`:

  ```ruby
  # app/controllers/blogs_controller.rb
  class BlogsController < Wallaby::ResourcesController
    self.theme_name = 'simple_blog_theme'
  end
  ```

Generally, this theme will detect the author, title, summary, body, published at and image fields.

But if they aren't detected correctly, you can config them in resource decorator:

```ruby
class BlogDecorator < Wallaby::ResourceDecorator
  # NOTE: author field should contain only string value
  index_field[:author_field][:is_author] = true

  # NOTE: title field should contain only string/text value
  index_field[:title_field][:is_title] = true

  # NOTE: summary field should contain only string/text value
  index_field[:summary_field][:is_summary] = true

  # NOTE: published_at field should contain only date/time value
  index_field[:published_at_field][:is_published_at] = true

  # NOTE: image field should contain only active_storage value
  index_field[:image_field][:is_image] = true

  # NOTE: body field should contain only string/text value
  index_field[:body_field][:is_body] = true
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_blog_theme', git: 'https://github.com/tian-im/simple_blog_theme.git'
```

And then execute:

```bash
$ bundle
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

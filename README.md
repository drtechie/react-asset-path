# react-asset-path

A helper to be able to use Rails' `asset_path` inside of components.
Highly inspired by [react-rails-img](https://github.com/rainchen/react-rails-img).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'react-asset-path'
```

Require the javascript file in `app/assets/javascripts/application.js`:

  ```js
  //= require react-asset-path
  ```

## Usage

  Anywhere in your JS/ES files :

  ```js
  railsAssetPath('logo-phonoid.png')
  # => /assets/phonoid-logo-c18477115655db9fa98674fc31af6050.png
  ```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT.

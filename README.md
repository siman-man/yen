# Yen

TODO: Write a gem description

## Installation

install it yourself as:

    $ gem install yen

## Usage

```ruby
require 'yen'

10000.to_j                  #=> 1万
10000.to_j(:all)            #=> 一万

370060178930.to_j           #=> 3700億6017万8930
370060178930.to_j(:all)     #=> 三千七百億六千十七万八千九百三十

10000.to_yen                #=> 1万円
10000.to_yen(:all)          #=> 一万円
```

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

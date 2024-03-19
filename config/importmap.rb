# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "stimulus-carousel" # @5.0.1
pin "dom7" # @4.0.6
pin "ssr-window" # @4.0.2
pin "swiper/bundle", to: "swiper--bundle.js" # @8.4.7

pin "@rails/actioncable", to: "@rails--actioncable.js" # @7.1.3
pin "stimulus-confetti" # @1.0.1
pin "canvas-confetti" # @1.9.2

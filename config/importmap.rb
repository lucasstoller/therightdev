pin "trix"
pin "@rails/actiontext", to: "actiontext.js"

pin "application", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
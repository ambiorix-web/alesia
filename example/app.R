devtools::load_all()
library(ambiorix)

setwd("./example")
here::i_am(".here")

app <- Ambiorix$new()

app$use(alesia())

app$get("/", \(req, res){
  res$render(
    "home",
    data = list(
      string = "Hello world!"
    )
  )
})

app$start()

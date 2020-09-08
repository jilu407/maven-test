provider "heroku" {
     email   = "jilani.oracledba@gmail.com"
     api_key = "7353f36e-9487-4499-b846-7d948a655867"
}

resource "heroku_app" "example" {
  name   = "test-my-app"
  region = "us"
}

resource "heroku_build" "example" {
  app = "my-name"
    
  source = {
    path = "./src"
  }
    provisioner "local-exec" {
       command= "heroku deploy:jar target/hello.jar --app java-app"     
}
}

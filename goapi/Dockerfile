from golang
expose 3000
add gumball.tar /go
workdir /go/src/gumball
run go get
cmd ["/go/wait.sh","mysql:3306","--","go","run","/go/src/gumball/main.go","/go/src/gumball/server.go","/go/src/gumball/types.go"]

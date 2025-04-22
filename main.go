package main

func main() {
	a := App{}
	a.Initialize(
		"postgres",
		"admin",
		"postgres")
	a.Run(":8010")
}

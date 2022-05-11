package main
import ("fmt"; "time")

func main() {
 start := time.Now()
 i := 0
 for i < 1000000000 {
  i++
 }
 fmt.Println(time.Since(start))
}

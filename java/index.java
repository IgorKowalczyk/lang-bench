import java.io.*;
  
public class Time {
 public static void main(String[] args) {
  long start = System.currentTimeMillis();
  for (long i = 0; i < 1000000000; i++) {}
  System.out.println((System.currentTimeMillis() - start) + "ms");
  System.exit(0);
 }
}

  
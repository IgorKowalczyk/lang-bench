import time
import math
start_time = time.time()
for i in range(1000000000):
    pass

print(str(math.floor((time.time() - start_time) * 1000)) + "ms")



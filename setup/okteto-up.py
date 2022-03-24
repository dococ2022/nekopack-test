print("OKTETO")

def okteto_up():
  print("RESTARTING OKTETO")
  import os
  string = """\
okteto context use https://cloud.okteto.com --token ISGTwRseIQVwbqEjj693H8h56kZcaQL5el9zEAv1defIj9SY
git clone https://github.com/ashty-drone/nekopack -b okteto
cd nekopack
okteto up
"""
  return os.system(string)

from datetime import datetime

start_time = datetime.now()

while True:
  curr_time = datetime.now()
  uptime = curr_time - start_time
  
  if uptime.seconds >= 5: okteto_up()

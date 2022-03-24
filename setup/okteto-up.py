def okteto_up():
  string = """\
okteto context use https://cloud.okteto.com
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
  
  if uptime.seconds >= 84600: okteto_up()

import os
if os.environ.get("UPSTREAM_REPO") == "goodcat": run Dockerfile
elif os.environ.get("UPSTREAM_REPO") == "badcat": run Dockerfile

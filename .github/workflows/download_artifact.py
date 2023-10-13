name: Download artifact

on:
  push:
    branches:
      - main

jobs:
  download:
    runs-on: ubuntu-latest

    steps:
      - name: Check out code
        uses: actions/checkout@v2

      - name: Download artifact
        uses: actions/run-python@v2
        with:
          python-version: '3.10'
          script: |
            import requests

            # Get the API token
            token = os.environ["GITHUB_TOKEN"]

            # Create the request
            url = "https://api.github.com/repos/<owner>/<repo>/actions/artifacts/<build-id>/<artifact-name>"
            headers = {"Authorization": "Bearer {}".format(token)}

            # Send the request
            response = requests.get(url, headers=headers)

            # Check the response
            if response.status_code == 200:
                # The request was successful
                with open("app-release.apk", "wb") as f:
                    f.write(response.content)
            else:
                print(response.status_code)

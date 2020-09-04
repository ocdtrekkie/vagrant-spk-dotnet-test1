#!/bin/bash

# When you change this file, you must take manual action. Read this doc:
# - https://docs.sandstorm.io/en/latest/vagrant-spk/customizing/#setupsh

set -euo pipefail

download_url='https://download.visualstudio.microsoft.com/download/pr/c58adb8a-49cf-466c-9b72-e4c51edae0e5/f915b953a5bfdafc300bd277d80c3513/dotnet-sdk-5.0.100-preview.8.20417.9-linux-x64.tar.gz'

wget "$download_url" -O dotnet.tar.gz
mkdir /usr/local/dotnet
tar -C /usr/local/dotnet -xvf dotnet.tar.gz

sudo mkdir /fake
sudo ln -s /usr/local/dotnet/dotnet /fake/proc-self-exe

exit 0

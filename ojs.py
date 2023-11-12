import asyncio
import requests
import aiohttp
from aiohttp import ClientSession
import time
import socket
import os


class color:
    HEADER = "\033[95m"
    OKBLUE = "\033[94m"
    OKCYAN = "\033[96m"
    OKGREEN = "\033[92m"
    WARNING = "\033[93m"
    FAIL = "\033[91m"
    ENDC = "\033[0m"
    BOLD = "\033[1m"
    UNDERLINE = "\033[4m"


def get(url):
    req = requests.get(url)
    status = req.status_code
    url = req.url
    if status == 200:
        print("\33[97;1mMasuk  \33[92;1m{}\33[97;1m  Mass {}".format(req.url, status))
    elif status == 404:
        print("\33[91;1m404 \33[94m{}\33[91;1m Forbiden Ini Webnya {}".format(req.url, status))
    elif status == 403:
     	print("\33[91;1m403 \33[94m{}\33[91;1m Gak Ada Loh \33[95;1m{}".format(req.url, status))
    else:
        print("\33[95;1mLoh ? {} Loh ? {}".format(req.url, status))
    return req
print("\n\033[32;1m========================================")
print("\033[32;1m Open Jurnall System Shell Finder \033[0m")
print("\033[32;1m========================================")
print("\033[32;1m[×] Github : github.com/nerogativgit13\033[0m")
print("\033[32;1m[×] Youtube: Ganest Seven\033[0m")
print("\033[32;1m========================================\n")
async def main():
    url = input("Masukan Url Target scan Ojs : ")
    if "http://" not in url:
        url = "http://" + url
    filename = input("Filename: ")
    no = filename.split("-")[0]
    loop = asyncio.get_event_loop()
    futures = [
        loop.run_in_executor(
            None,
            get,
            "{}/files/journals/{}/articles/{}/submission/original/{}".format(url, x + 1, no, filename),
        )
        for x in range(250)
    ]
    print()
    data = []
    for x in await asyncio.gather(*futures):
        if x.status_code == 200:
            data.append(x.url)
    print("\33[92;1m" + "\n".join(data))


loop = asyncio.get_event_loop()
loop.run_until_complete(main())
#!/usr/bin/python3
""" Subscribers of a subreddit """
import json
import requests


def top_ten(subreddit):
    """ Print list of host posts

        Params:
        @subreddit: subreddit

        Return: Nothing, just print
    """
    user_agent = ''
    headers = {'User-Agent': user_agent}
    url = 'https://reddit.com/r/'
    url += subreddit + '/hot.json'
    r = requests.get(url, headers=headers)
    if r.status_code >= 400:
        print("None")
        return
    # List of hotposts
    data = json.loads(r.text)['data']['children']
    for i in range(len(data)):
        hot_post = data[i]
        print(hot_post['data']['title'])
        if i + 1 == 10:
            return

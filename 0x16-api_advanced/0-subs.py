#!/usr/bin/python3
""" Subscribers of a subreddit """
import json
import requests


def number_of_subscribers(subreddit):
    """ How many subscribers have a subreddit

        Params:
        @subreddit: subreddit

        Return: Number of subscribers have a subreddit
                of 0 if is not a valid subreddit
    """
    user_agent = ''
    headers = {'User-Agent': user_agent}
    url = 'https://reddit.com/r/'
    url += subreddit + '/about.json'
    r = requests.get(url, headers=headers)
    if r.status_code >= 400:
        return 0
    data = json.loads(r.text)['data']
    return data['subscribers']

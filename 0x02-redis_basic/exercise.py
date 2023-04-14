#!/usr/bin/env python3
"""
Class that connects to the database and flushes when complete
The class has a method store that updates redis
"""
import redis
import uuid
from typing import Union


class Cache():
    """Define  instance variable called redis
       Attributes:
                  _redis: Aredis client instance.
       Methods:
               store: Inputs data in redis.
    """
    def __init__(self):
        """
           creates the redis instance
           flushes it afterwards
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """Deals with data storage
           Args:
                data:Can be str, byte, int, float
           Returns:
                  key: generated using the uuid
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

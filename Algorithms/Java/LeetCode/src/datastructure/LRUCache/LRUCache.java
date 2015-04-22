package datastructure.LRUCache;

import java.util.HashMap;
import java.util.Map;

public class LRUCache {

    private int _capacity;
    class Cache {
        int key;
        int value;
        Cache next;
        Cache prev;
    }
    private Cache first;
    private Cache last;
    private int count = 0;
    private Map<Integer, Cache> cacheMap = new HashMap<Integer, Cache>();

    public LRUCache(int capacity) {
        _capacity = capacity;
        first = last;
    }

    public int get(int key) {
        if (!cacheMap.containsKey(key)) {
            return -1;
        }

        Cache cache = cacheMap.get(key);
        useCache(cache);

        return cache.value;
    }

    public void useCache(Cache cache) {
        if (last == cache) {
            return;
        }
        Cache front = cache.prev;
        Cache next = cache.next;

        // Unlink
        if (front != null) {
            front.next = cache.next;
        }
        if (next != null) {
            next.prev = cache.prev;
        }
        // first's handle
        if ((first == cache) && (cache.next != null)) {
            first = cache.next;
        }

        // move to last
        last.next = cache;
        cache.prev = last;
        last = cache;
    }

    public void set(int key, int value) {
        if (cacheMap.containsKey(key)) {
            Cache cache = cacheMap.get(key);
            cache.value = value;
            useCache(cache);

            return;
        }

        Cache cache = new Cache();
        cache.key = key;
        cache.value = value;

        // set last
        if (last != null) {
            last.next = cache;
            cache.prev = last;
        }
        last = cache;

        if (first == null) {
            first = cache;
        }

        cacheMap.put(key, cache);

        count++;

        if (count <= _capacity) {
            return;
        }

        cacheMap.remove(first.key);
        first = first.next;
        if (first != null) {
            first.prev = null;
        }
    }
}

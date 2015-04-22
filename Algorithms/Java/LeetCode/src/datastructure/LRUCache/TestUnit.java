package datastructure.LRUCache;


public class TestUnit {
    public static void main(String[] args) {
        lruCase2();
        // 2,[set(2,1),set(3,2),get(3),get(2),set(4,3),get(2),get(3),get(4)]
        System.out.println("2,[set(2,1),set(3,2),get(3),get(2),set(4,3),get(2),get(3),get(4)]");
        System.out.println("[2,1,1,-1,3]");
        lruCase3();
    }

    private static void lruCase3() {
        LRUCache lru = new LRUCache(2);
        lru.set(2, 1);
        lru.set(3,2);
        System.out.println(lru.get(3));
        System.out.println(lru.get(2));
        lru.set(4, 3);
        System.out.println(lru.get(2));
        System.out.println(lru.get(3));
        System.out.println(lru.get(4));

    }

    private static void lruCase1() {
        LRUCache lru = new LRUCache(1);
        lru.set(2, 1);
        System.out.println(lru.get(2));
    }

    private static void lruCase2() {
//        2,[set(2,1),set(1,1),get(2),set(4,1),get(1),get(2)]
        LRUCache lru = new LRUCache(2);
        lru.set(2,1);
        lru.set(1,1);
        System.out.println(lru.get(2));
        lru.set(4, 1);
        System.out.println(lru.get(1));
        System.out.println(lru.get(2));

    }
}

class MyHashMap:

    def __init__(self):
        self.hashmap = []

    def put(self, key: int, value: int) -> None:
        found = False
        for i in range(len(self.hashmap)):
            k, v = self.hashmap[i]
            if k == key:
                self.hashmap[i] = (key, value)
                found = True
                break
        if not found:
            self.hashmap.append((key, value))
                
                

    def get(self, key: int) -> int:
        for i in range(len(self.hashmap)):
            k, v = self.hashmap[i]
            if k == key:
                return v
        return -1

    def remove(self, key: int) -> None:
        for i in range(len(self.hashmap)):
            k, v = self.hashmap[i]
            if k == key:
                self.hashmap.pop(i)
                return
        return -1
        


# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap()
# obj.put(key,value)
# param_2 = obj.get(key)
# obj.remove(key)
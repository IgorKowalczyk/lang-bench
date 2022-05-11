const before = Date.now();
for (var i = 0; i < 1000000000; i++) {
}
console.log(`${Date.now() - before}ms`);

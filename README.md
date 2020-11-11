Partially copied from of https://github.com/adamdruppe/webassembly with heavy changes and more complete runtime.

# Building

```
dub --force --verbose --compiler=ldc2
python3 -m http.server 8080
```

and then browse to `http://localhost:8080/`

Fixed by 1c8f79f.

JS console (F12) should show

```
_aaGetY
0
_aaGetY
1
_aaGetY
2
_aaInY
3
three ok
```

But it shows

```
_aaGetY
0
_aaGetY
1
_aaGetY
2
_aaInY
0
three NOT ok
```
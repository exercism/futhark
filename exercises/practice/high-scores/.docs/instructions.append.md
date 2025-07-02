# Instructions append

## Sorting package

This exercise requires you to sort an array, but this isn't built into the standard library.
You could write your own sorting library, but a better option is to use the [sorts package](https://github.com/diku-dk/sorts).

You can use this package in your solution by running the following command in the solution directory:

```shell
futhark pkg add github.com/diku-dk/sorts
futhark pkg sync
```

Then, import your [desired sorting algoritms](https://github.com/diku-dk/sorts/tree/master/lib/github.com/diku-dk/sorts) via:

```futhark
import "lib/github.com/diku-dk/sorts/<sorting algorithm>"
```

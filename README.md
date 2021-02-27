## elm-n-type

We go on where we left off in [`elm-n-nat-type`][elm-n-nat-type].

> You might also want a function, where one `NaturalNat` should be at least as big as another one.

```elm
unsafeInterval : NaturalNumber first -> NaturalNumber maybeMoreThanFirst -> Interval
```

```elm
import N.Nat.Type exposing (..)
import N.Type exposing (..)


--we don't expose the constructor
type NNat n =
    NNat Int

zero : NNat (N N0Nat Is (Diffence a To a))
zero =
    NNat one

add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1NatPlus n) Is (Difference a To (N1NatPlus nPlusA))
add1 (NNat int) =
    NNat (int + 1)
```

We can now see if the difference between two values is a certain value!

We want to promise that

```elm
last == first + the interval length
```

which means

```elm
first == last - the interval length
```

→ `N first Is (Difference intervalLength To last)` is our final type 🔥!

```elm
safeInterval :
    NNat first (Plus maybeMore Is last)
    -> NNat last describesADelta
    -> Interval
```


This package together with [`elm-n-nat-type`][elm-n-nat-type] is the foundation of [`elm-n-nat`][elm-n-nat], [`elm-nat-within`][elm-nat-within], [`elm-n-array`][elm-n-array].

Take a closer look at those packages to see `N.Type` in action!

[elm-n-nat-type]: https://package.elm-lang.org/packages/indique/elm-n-nat-type/latest/
[elm-n-nat]: https://package.elm-lang.org/packages/indique/elm-n-nat/latest/
[elm-nat-within]: https://package.elm-lang.org/packages/indique/elm-nat-within/latest/
[elm-n-array]: https://package.elm-lang.org/packages/indique/elm-n-array/latest/

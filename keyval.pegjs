start =
    exp+

exp =
    key '=' val ';'?

key =
    $([a-z]+)

val =
    $((!(';' key '=') .)+)

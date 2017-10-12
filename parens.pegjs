Text
  = "(" text:TextUntilTerminator ");" { return text.join(""); }
 
TextUntilTerminator
  = xs:(&HaveTerminatorAhead .)* {
    return xs.map(x => x[1])
  }

HaveTerminatorAhead
  = . (!");" .)* ");"

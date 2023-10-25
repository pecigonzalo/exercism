let twoFer = (x: option(string)) => {
  switch (x) {
    | Some(x) => "One for " ++ x ++ ", one for me.";
    | None => "One for you, one for me.";
  }
}

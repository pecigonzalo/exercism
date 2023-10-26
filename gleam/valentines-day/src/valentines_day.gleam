pub type Approval {
  Yes
  No
  Maybe
}

pub type Cuisine {
  Korean
  Turkish
}

pub type Genre {
  Crime
  Horror
  Romance
  Thriller
}

pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    BoardGame | Chill -> No
    Movie(genre) ->
      case genre {
        Romance -> Yes
        _ -> No
      }
    Restaurant(cuisine) ->
      case cuisine {
        Korean -> Yes
        Turkish -> Maybe
        _ -> No
      }
    Walk(distance) ->
      case distance {
        x if x > 11 -> Yes
        x if x > 6 -> Maybe
        _ -> No
      }
  }
}

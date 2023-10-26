import gleam/string

pub fn message(log_line: String) -> String {
  let message = case log_line {
    "[INFO]:" <> message -> message
    "[WARNING]:" <> message -> message
    "[ERROR]:" <> message -> message
    _ -> "Unknown"
  }

  string.trim(message)
}

pub fn log_level(log_line: String) -> String {
  let level = case log_line {
    "[INFO]:" <> _ -> "info"
    "[WARNING]:" <> _ -> "warning"
    "[ERROR]:" <> _ -> "error"
    _ -> "unknown"
  }

  string.lowercase(level)
}

pub fn reformat(log_line: String) -> String {
  let level = log_level(log_line)
  let message = message(log_line)

  message <> " (" <> level <> ")"
}

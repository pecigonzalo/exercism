defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    wordList = String.split(sentence, " ")
    Enum.frequencies(wordList)
  end
end

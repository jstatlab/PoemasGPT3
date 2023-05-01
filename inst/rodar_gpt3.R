# https://platform.openai.com/tokenizer

token <- Sys.getenv("OPENAI_API_KEY")

r <- httr::POST(
  "https://api.openai.com/v1/completions",
  httr::add_headers(
    "Authorization" = paste("Bearer", token)
  ),
  body = list(
    model = "text-davinci-003",
    prompt = "Escreva um poema sobre a linguagem R",
    temperature = 0.8,
    max_tokens = 512,
    top_p = 1,
    frequency_penalty = 0,
    presence_penalty = 0
  ),
  encode = "json"
)

cat(
  httr::content(r)$choices[[1]]$text,
  file = "README.md"
)

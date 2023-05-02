# https://platform.openai.com/tokenizer

token <- Sys.getenv("OPENAI_API_KEY")

# pkgload carrega menos coisas que devtools::load_all(".")
pkgload::load_all(".")

texto <- rodar_gpt3(token)

cat(texto, file = "README.md")

require("codecompanion").setup({
	llm = {
		provider = "ollama",
		endpoint = "http://localhost:11434",
		model = "qwen2.5-coder:7b"
	}
})

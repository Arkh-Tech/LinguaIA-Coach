# LinguaIA Coach

**LinguaIA Coach** é um app web (SPA em arquivo único) para estudar inglês com IA local via Ollama.
Funciona 100% no navegador, com suporte a **chat, leitura, speaking/listening, tradutor e lookup de vocabulário**, além de explicações bilíngues (PT/EN) e persistência em `localStorage`.

---

## 🇧🇷 Português

### ✨ Funcionalidades

- **Settings / Conexão com Ollama**
  - URL base (padrão: `http://localhost:11434`) e API key/token opcional.
  - Dropdown dinâmico de modelos (consulta `/api/tags`).
  - Modo bilíngue (explicações em português; conversa em inglês).
  - Preferências de áudio: sotaque (en-US/en-GB) e velocidade (0.8x/1.0x/1.2x).

- **Ferramentas flutuantes**
  - Tradutor rápido PT → EN com notas de contexto.
  - Busca de palavras (EN → tradução PT, definição e 3 exemplos).

- **Writing Practice**
  - Chat em tempo real com cenários (Entrevista, Viagem/Comida, Conversa Casual).
  - Resposta em duas partes: reply em inglês + feedback em português.

- **Reading Practice**
  - Artigos por nível (A1 a C1) com clique em palavras para popover de definição.
  - Quiz de compreensão gerado pelo LLM, com explicações em português.

- **Speaking & Listening**
  - Entrada por voz via `SpeechRecognition`.
  - Text-to-Speech com controle de velocidade e sotaque, com autoplay opcional.
  - Modo “Listen & Repeat” com feedback de pronúncia.

- **UI/UX**
  - Tema claro/escuro com sidebar recolhível.
  - Persistência de settings, histórico de chat e vocabulário em `localStorage`.
  - Tratamento de erros de conexão com Ollama.

### 🧰 Tecnologias

- React 18 (UMD via CDN)
- Tailwind CSS v4 (Play CDN)
- Babel Standalone (JSX no navegador)
- Lucide-style icons (SVG inline)
- Web Speech API (`SpeechRecognition` / `speechSynthesis`)
- Ollama API (`/api/tags`, `/api/chat`, fallback `/v1/chat/completions`)

### 📋 Pré-requisitos

1. **Ollama instalado e rodando** (local ou cloud compatível)
   - https://ollama.com
2. **Navegador moderno** (Chrome/Edge recomendado para STT/TTS)
3. Modelo baixado, ex.:
   ```bash
   ollama pull llama3.1
   # ou: ollama pull qwen2.5 / mistral
### Como executar

```bash
# Opção A: abrir o arquivo index.html no navegador

# Opção B: servidor local
python -m http.server 8080
# ou
npx serve .
```

Acesse: `http://localhost:8080`

### Configurar CORS do Ollama

**Linux/macOS**
```bash
OLLAMA_ORIGINS=* ollama serve
```

**Windows (PowerShell)**
```powershell
$env:OLLAMA_ORIGINS="*"
ollama serve
```

### Estrutura

```text
index.html
README.md
LICENSE
```

### Contribuindo

Fork, branch, commit, push e pull request.

### Licença

MIT License.

---

## 🇺🇸 English

### Features

- **Settings / Ollama**: base URL, optional API key, dynamic model dropdown via `/api/tags`, bilingual mode, TTS accent/rate, autoplay.
- **Floating tools**: PT → EN translator with context notes; word lookup with PT translation, definition, and 3 examples.
- **Writing Practice**: roleplay chat with English replies and Portuguese feedback.
- **Reading Practice**: A1–C1 articles with click-to-define words and comprehension quizzes.
- **Speaking & Listening**: voice input, TTS controls, and Listen & Repeat mode.
- **UI/UX**: light/dark theme, collapsible sidebar, and `localStorage` persistence.

### Requirements

- Ollama installed and running
- Modern browser (Chrome/Edge recommended)
- At least one pulled model, e.g. `ollama pull llama3.1`

### Run

```bash
# Option A: open index.html in your browser

# Option B: local server
python -m http.server 8080
# or
npx serve .
```

Open: `http://localhost:8080`

### Ollama CORS

Set `OLLAMA_ORIGINS=*` (or a specific origin) before starting `ollama serve`.

### Structure

```text
index.html
README.md
LICENSE
```

### Contributing

Fork, create a branch, commit, push, and open a pull request.

### License

MIT License.


# TERMO ∞

Jogo de palavras em português, com partidas **ilimitadas**. Acabou uma palavra, vem outra na hora, sem esperar o dia seguinte.

### ▶️ [Jogar agora em termoinfinito.online](https://termoinfinito.online)

Funciona no celular e no computador, direto no navegador. Não precisa instalar nem criar conta.

---

## 🎯 Como funciona

Você tem algumas tentativas para descobrir uma palavra de 5 letras. A cada tentativa, as cores mostram o quão perto você chegou:

| Cor | O que significa |
|---|---|
| 🟩 Verde | A letra existe na palavra e está na posição certa |
| 🟨 Amarelo | A letra existe na palavra, mas em outra posição |
| ⬛ Cinza | A letra não faz parte da palavra |

Um exemplo, com a palavra secreta **TERMO**:

```
P R A T O    ⬛ 🟨 ⬛ 🟨 🟩
T E N R O    🟩 🟩 ⬛ 🟨 🟩
T E R M O    🟩 🟩 🟩 🟩 🟩   ✅ acertou em 3
```

## 🕹️ Três modos

| Modo | Palavras ao mesmo tempo | Tentativas |
|---|---|---|
| **Termo** | 1 | 6 |
| **Dueto** | 2 | 7 |
| **Quarteto** | 4 | 9 |

No Dueto e no Quarteto, cada tentativa vale para todos os tabuleiros de uma vez. As teclas do teclado se dividem em partes, uma cor para cada palavra, para você ver de relance onde cada letra já foi testada.

## ✨ O que tem de diferente

- **♾️ Palavras ilimitadas.** Terminou a partida, aperte `Enter` ou ↻ e já começa outra.
- **🏆 Ranking online.** Coloque seu nome no topo da tela e suas partidas entram na disputa, com um ranking separado por modo.
- **🔤 Acentos automáticos.** Digite `acao` e o jogo escreve `ação`. Cedilha também.
- **📖 Só palavra de verdade.** A tentativa precisa existir no dicionário, então não dá para chutar letras soltas.
- **👆 Cursor livre.** Clique em qualquer quadrado da linha para escolher onde a próxima letra entra.
- **📊 Estatísticas.** Vitórias, sequência e distribuição de tentativas em cada modo.
- **📤 Compartilhar.** Copie o resultado em quadradinhos coloridos, sem revelar a palavra.
- **🌗 Tema claro e escuro.**
- **🟧🟦 Alto contraste.** Troca verde e amarelo por laranja e azul, para quem tem daltonismo.

## 🏆 Como o ranking é calculado

A ordem leva em conta, nesta sequência:

1. Mais vitórias
2. Maior porcentagem de vitórias
3. Menos tentativas em média

Trocar de palavra ou de modo no meio de uma partida conta como **derrota**. O jogo pede um segundo clique antes de confirmar, para ninguém desistir sem querer.

## ⌨️ Atalhos

| Tecla | Ação |
|---|---|
| `Enter` | Enviar a tentativa (ou começar outra partida, se a atual acabou) |
| `Backspace` | Apagar |
| `←` `→` | Mover o cursor |
| `Espaço` | Pular para o próximo quadrado |

---

## 🛠️ Para quem quer ver por dentro

O jogo inteiro é **um arquivo só**: HTML, CSS e JavaScript puros, sem framework e sem etapa de build.

| Arquivo | Para que serve |
|---|---|
| `index.html` | O jogo completo: tela, regras, teclado e lista de palavras |
| `supabase.sql` | Tabela de partidas e a visão do ranking |
| `privacidade.html` | Política de privacidade |
| `vercel.json` | Configuração da hospedagem |
| `ads.txt` | Arquivo exigido pelo Google AdSense |

**Rodar no seu computador:** baixe o repositório e abra o `index.html` no navegador. Só isso.

**Ter um ranking próprio:** crie um projeto no [Supabase](https://supabase.com), rode o `supabase.sql` no editor SQL e troque `SUPABASE_URL` e `SUPABASE_KEY` no `index.html` pelos dados do seu projeto. Use sempre a chave *publishable*, nunca a secreta. Sem isso o jogo funciona normalmente, só o ranking fica desligado.

**Hospedagem:** [Vercel](https://vercel.com), com publicação automática a cada alteração na `main`.

## 📄 Uso do código

O código está aberto para leitura e estudo. Este repositório não tem licença de reutilização, então os direitos continuam com o autor. Quer usar alguma parte? Abra uma *issue* para conversar.

## 💬 Sugestões e erros

Achou uma palavra que deveria ser aceita, um erro ou tem uma ideia? [Abra uma issue](https://github.com/Gusthavx/termoinfinito/issues).

---

Feito por [Gusthavx](https://github.com/Gusthavx).

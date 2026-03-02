# Git Cheatsheet

## Git Configuration

```bash
git config --global user.name "<Your Name>"    # Configura il nome utente
git config --global user.email "<Your Email>"  # Configura l'email utente
git config --list                              # Mostra la configurazione attuale
```

## Git Repository Commands

```bash
git init                                       # Inizializza un nuovo repository Git
git clone <repo_url>                           # Clona un repository remoto
git status                                     # Mostra lo stato del repository
git log                                        # Mostra la cronologia dei commit
```

## Git Staging & Committing

```bash
git add <file>                                 # Aggiunge un file al prossimo commit
git add .                                      # Aggiunge tutti i file modificati
git commit -m "<message>"                      # Effettua un commit con un messaggio
git commit -am "<message>"                     # Salva e committa tutte le modifiche tracciate
```

## Git Branching

```bash
git branch                                     # Elenca i branch disponibili
git branch <branch_name>                       # Crea un nuovo branch
git checkout <branch_name>                     # Passa a un altro branch
git switch <branch_name>                       # Alternativa moderna a `checkout`
git merge <branch_name>                        # Unisce un branch nel branch attuale
git branch -d <branch_name>                    # Elimina un branch
```

## Git Remote & Syncing

```bash
git remote -v                                  # Mostra i repository remoti configurati
git remote add origin <repo_url>               # Aggiunge un repository remoto
git fetch                                      # Recupera le modifiche dal repository remoto
git pull                                       # Scarica e unisce le modifiche dal repository remoto
git push origin <branch_name>                  # Invia le modifiche al repository remoto
git push -u origin <branch_name>               # Imposta il tracking per il branch remoto
```

## Git Undo & Reset

```bash
git reset --hard <commit_hash>                 # Resetta il repository a un commit specifico
git reset --soft <commit_hash>                 # Resetta mantenendo le modifiche nell'area di staging
git revert <commit_hash>                       # Crea un commit che annulla le modifiche di un commit precedente
git stash                                      # Salva temporaneamente le modifiche senza committarle
git stash pop                                  # Applica le modifiche salvate con stash
```

## Git Tags

```bash
git tag                                        # Elenca i tag esistenti
git tag <tag_name>                             # Crea un nuovo tag
git push origin <tag_name>                     # Invia un tag al repository remoto
```

## Git Logs & Diffs

```bash
git diff                                       # Mostra le differenze tra file non committati
git diff <commit_hash>                         # Mostra le differenze tra il commit specificato e quello attuale
git log --oneline --graph --all --decorate     # Mostra una cronologia compatta con il grafo dei branch
```
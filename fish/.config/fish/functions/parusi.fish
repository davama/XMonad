function parusi --wraps=paru\ -Slq\ \|\ fzf\ --multi\ --preview\ \'paru\ -Si\ \{1\}\'\ \|\ xargs\ -ro\ sudo\ paru\ -S --description alias\ parusi=paru\ -Slq\ \|\ fzf\ --multi\ --preview\ \'paru\ -Si\ \{1\}\'\ \|\ xargs\ -ro\ sudo\ paru\ -S
  paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro sudo paru -S $argv; 
end

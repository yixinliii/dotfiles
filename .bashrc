alias ll="ls -l"
alias dino="cd /afs/cs.stanford.edu/u/yixinli/FInetuneDINO"
alias v="vim"
alias ts="pestat -p orion -G"
alias a6000="srun --account=orion --partition=orion-interactive --gres=gpu:a6000:1 --cpus-per-task=10 --time=480 --mem=32G --nodelist=oriong13 --pty bash"
alias a5000="srun --account=orion --partition=orion-interactive --gres=gpu:a5000:1 --cpus-per-task=10 --time=480 --mem=32G --nodelist=oriong12 --pty bash"
alias cpu="srun --account=orion --partition=orion-interactive --cpus-per-task=10 --time=480 --mem=32G --nodelist=oriong12 --pty bash"

export HF_HOME=/orion/u/yixinli/.cache/huggingface
export TORCH_HOME=/orion/u/yixinli
export HOME=/orion/u/yixinli

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/orion/u/yixinli/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/orion/u/yixinli/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/orion/u/yixinli/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/orion/u/yixinli/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


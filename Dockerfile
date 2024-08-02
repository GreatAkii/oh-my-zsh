FROM ubuntu:24.04
RUN apt-get update && apt-get install zsh curl git nano -y \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/GreatAkii/oh-my-zsh/main/install-noprompt.sh)" \
    && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k \
    && sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc \
    && curl -fsSL https://raw.githubusercontent.com/GreatAkii/oh-my-zsh/main/power10k-config >> ~/.zshrc \
    && git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting \
    && sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
CMD ["zsh"]

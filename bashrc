##用于sshgent代理，防止重复登录，导致的重复sshgent的问题
#在没有软链的时候，启动sshagent，并将环境变量设定为软链地址,再次登录时，将不会启动sshagent。
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l | grep "The agent has no identities" && ssh-add

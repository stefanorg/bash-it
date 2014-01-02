#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}"
GIT_THEME_PROMPT_SUFFIX="${green}"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

C1="\[\033[1;32m\]" #green
C2="\[\033[1;34m\]" #blue
C3="\[\033[0m\]"
C4="\[\033[0;36m\]"

function prompt_command() {
    #PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\h ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
    #PS1="\n${yellow}$(ruby_version_prompt) ${purple}\u@\h ${reset_color}in ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
    
    PS1="${C2}(${purple}\u${green}@${purple}\h${C2})${reset_color} - ${C2}($(scm_char)${green}$(scm_prompt_info)${C2})${reset_color} - ${C2}(${purple}\w${C2})\n${C2}-${C1}=>>${C3}"
}

PROMPT_COMMAND=prompt_command;


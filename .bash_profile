#!/bin/bash

function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]; then
		echo "(${BRANCH}) "
	else
		echo ""
	fi
}

export PS1="\[\e[33m\]\u\[\e[m\] \[\e[37m\]\w\[\e[m\] \[\e[31m\]\`parse_git_branch\`\[\e[m\]\[\e[33m\]\\$\[\e[m\] "

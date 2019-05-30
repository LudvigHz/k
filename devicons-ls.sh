#!/bin/bash
# Author: Ryan L McIntyre
# Original Project: devicons-shell

# Modified by: Ludvig Hozman
# For use in github.com/ludvigHz/k


function devicons_get_directory_symbol {

	local symbol=""

	echo "$symbol $1"
	return 0
}

function devicons_get_git_directory_symbol {

	local symbol=""

	echo "$symbol $1"
	return 0
}

function devicons_get_filetype_symbol {

	declare -A extensions=(
		[txt]=e
		[styl]=
		[scss]=
		[htm]=
		[html]=
		[slim]=
		[xml]=
		[ejs]=
		[css]=
		[less]=
		[md]=
		[markdown]=
		[json]=
		[js]=
		[jsx]=
		[rb]=
		[php]=
		[py]=
		[pyc]=
		[pyo]=
		[pyd]=
		[coffee]=
		[mustache]=
		[hbs]=
		[conf]=
		[ini]=
		[yml]=
		[bat]=
		[jpg]=
		[jpeg]=
		[bmp]=
		[png]=
		[gif]=
		[ico]=
		[twig]=
		[cpp]=
		[c++]=
		[cxx]=
		[cc]=
		[cp]=
		[c]=
		[hs]=
		[lhs]=
		[lua]=
		[java]=
		[sh]=
		[fish]=
		[ml]=λ
		[mli]=λ
		[diff]=
		[db]=
		[sql]=
		[dump]=
		[clj]=
		[cljc]=
		[cljs]=
		[edn]=
		[scala]=
		[go]=
		[dart]=
		[xul]=
		[sln]=
		[suo]=
		[pl]=
		[pm]=
		[t]=
		[rss]=
		[f#]=
		[fsscript]=
		[fsx]=
		[fs]=
		[fsi]=
		[rs]=
		[rlib]=
		[d]=
		[erl]=
		[hrl]=
		[vim]=
		[vimrc]=
		[ai]=
		[psd]=
		[psb]=
		[ts]=
		[jl]=
                [sh]=
                [bash]=
                [zsh]=
                [log]=
                [git]=
                [gitignore]=
                [zip]=
                [gz]=
                [xz]=
                [pdf]=
                [doc]=
                [svg]=ﰟ
                [eps]=ﰟ
                [epf]=
                [deb]=
                [iso]=﫭
                [mp4]=
                [mkv]=
	)

        declare -A filenames=(
              [Dockerfile]=
              [Makefile]=
              [LICENSE]=
              [vimrc]=
              [zshrc]=
        )

	local filetype
	local default=
	local exist_check=1
	local input=$1
	local filename="$1"
	# using ## for possibly more than one "." (get after last one):
	local filetype="${filename##*.}"
        # get filename without extension
        local filename_noext="${filename%.*}"

        # If file has declared extension, use corresponding symbol
	if [ ! -z "$filetype" ] && [ ${extensions[$filetype]+$exist_check} ]; then
		local symbol=${extensions[$filetype]}
        # If the file has no extension, use symbol by filename
        elif [ ${filenames[$filename_noext]+$exist_check} ]; then
                local symbol=${filenames[$filename_noext]}
        else
		local symbol=$default
	fi

	echo "$symbol"

	return 0
}

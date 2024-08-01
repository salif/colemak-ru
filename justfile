#!/usr/bin/justfile -f

_:
	@just --list

translate:
	node ../colemak-bg/translate.js up README
	node ../colemak-bg/translate.js up LINUX

serve:
	bundle exec jekyll serve

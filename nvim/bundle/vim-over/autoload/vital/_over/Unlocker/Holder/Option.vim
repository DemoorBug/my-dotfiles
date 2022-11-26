" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not mofidify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_over#Unlocker#Holder#Option#import() abort', printf("return map({'is_makeable': '', 'make': ''}, \"vital#_over#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim
let s:obj = {}


function! s:obj.get()
	return eval(self.__name)
endfunction


function! s:obj.set(value)
	execute "let " . self.__name . " = a:value"
	return self
endfunction


function! s:is_makeable(rhs)
	return type(a:rhs) == type("")
\		&& a:rhs =~ '^[a-zA-Z&]'
\		&& exists(a:rhs)
endfunction


function! s:make(name)
	let result = deepcopy(s:obj)
	let result.__name = a:name
	return result
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

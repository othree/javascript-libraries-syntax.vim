" Vim syntax file
" Language:    vue.js for HTML
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword+=-

syntax keyword htmlArg contained v-text v-html v-if v-show v-else
syntax keyword htmlArg contained v-for v-pre v-cloak v-once

syntax keyword htmlArg contained key ref slot

syntax keyword htmlArg      contained v-on nextgroup=vueOnColon
syntax match vueOnColon     contained /:/ nextgroup=vueEvents
syntax match htmlArg        contained /@/ nextgroup=vueEvents
syntax match vueEvents      contained /\k\+/ nextgroup=vueEventsModDot
syntax match vueEventModDot contained /\./ nextgroup=vueEventMod
syntax keyword vueEventMod  contained stop prevent capture self keyCode keyAlias native

syntax keyword htmlArg      contained v-on nextgroup=vueBindColon
syntax match vueBindColon   contained /:/ nextgroup=vueBindTarget
syntax match htmlArg        contained /@/ nextgroup=vueBindTarget
syntax match vueBindTarget  contained /\k\+/ nextgroup=vueBindModDot
syntax match vueBindModDot  contained /\./ nextgroup=vueBindMod
syntax keyword vueBindMod   contained prop

syntax keyword htmlArg      contained v-model nextgroup=vueModelModDot
syntax match vueModelModDot contained /\./ nextgroup=vueModelMod
syntax keyword vueModelMod  contained lazy number trim

syntax keyword htmlTagName  contained component transition transition-group keep-alive slot

" transition attributes
syntax keyword htmlArg      contained appear css mode enter-class leave-class enter-active-class leave-active-class appear-class appear-active-class
" transition-group attributes
syntax keyword htmlArg      contained tag move-class

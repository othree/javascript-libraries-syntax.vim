for filetype in 'coffee' 'ls' 'typescript'
do
    for lib in 'jquery' 'underscore' 'backbone' 'prelude' 'angularjs' 'angularuirouter' 'requirejs' 'sugar' 'jasmine' 'chai' 'ramda' 'react' 'flux' 'handlebars'
    do
    sed "s/javascript/$filetype/g" $lib.javascript.vim > $lib.$filetype.vim
    done
done

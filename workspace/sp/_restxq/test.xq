xquery version "3.0" ;
module namespace demo = 'demo' ;
declare default function namespace 'demo' ;
(:~
 : resource function demo
 : idproprio 1219ear
 :)
declare 
  %restxq:path('/demo/{$param}')
  %restxq:produces('text/html')
  %output:method('html')
  %output:html-version('5.0')
function titres($param) {
  for $titres in db:open('sp')//*:article[@idproprio=$param]//*:liminaire//*:titre
  return (
    <p>{$titres}</p>
  )
  };
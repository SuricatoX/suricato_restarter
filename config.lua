local suricato = {


	['functions'] = {checkPerm = vRP.hasPermission, takeId = vRP.getUserId},
	['notify-noperm'] = {eventname = 'Notify', secondarg = 'negado', content = 'Sem Permissão!'},
	['notify-noargs'] = {eventname = 'Notify', secondarg = 'negado', content = 'Sem argumentos para o seu comando!'},
	['permission-check'] = 'admin.permissao',
	['commands'] = {startscript = 'iniciar', stopscript = 'parar', restartscript = 'reiniciar'},
    	['print-console-cmd'] = 'Seu comando não possui argumentos!'
    

}
return suricato

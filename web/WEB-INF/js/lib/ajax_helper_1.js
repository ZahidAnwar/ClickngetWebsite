
function alert_err(transport)
{

    if(transport.status==401)
       window.location.href="/Home?errorMsg=Session expired";
    else
        alert("ajax error");

}
function displaySearch(){
	//Dummy
}
function ajax_FormUpdaterURL(formid,elementid,funcSuccess)
{
        var f = $(formid);
        if(f)
        {
            ajax_UpdaterURL(f.action + "?" + f.serialize(),elementid,funcSuccess);
        }
	return false;
}
function ajax_SubmitGet(name,onsuccess)
{

	
        var f = $(name);
        if(f)
        {
            ajax_Get(f.action + "?" + f.serialize(),onsuccess);
        }
	return false;
}
function ajax_Submit(name,onsuccess,onfailure,action,validate)
{

	if(action=='validate'){
		if(! validate(name))
		return false;
	}

        var f = $(name);
        if(f)
        {
            f.request({
  	method:'post',
	onSuccess: onsuccess,
	onFailure: onfailure
	});
        }
	return false;
}

function ajax_Get(url,funcSuccess)
{
    	new Ajax.Request(url,
  	{
    method:'get',
    onSuccess: funcSuccess,
    onFailure: alert_err
	}
  );

}
function ajax_UpdaterURL(url,id,funcSuccess) {
	new Ajax.Updater(
	{success: id},
	url,
	{method: 'get',  onFailure: alert_err, onSuccess: funcSuccess,evalScripts: true});
	return false;
}
function ajax_UpdaterURLComplete(url,id,funcComplete) {
	new Ajax.Updater(
	{success: id},
	url,
	{method: 'get',  onFailure: alert_err, onComplete: funcComplete,evalScripts: true});
	return false;
}

function ajax_remove(parent,id){
    var p = $(parent);
    var div = $(id);
    if(p && div)
        p.removeChild(div);
    return false;
}


/* AutoCompleter */
function insertAutoSuggestion(id,val){
    $(id).innerHTML = '';
    $(id).innerHTML = '' + val;
}

var Nutra = { }
Nutra.AutoBase = Class.create({
  baseInitialize: function(element, fire, minChars, freq) {

    this.element     = $(element);
    this.fire 	     = fire;
    this.changed     = false;
    this.active      = false;
    this.oldElementValue = this.element.value;
    this.minChars = minChars;
    if(freq==0 || freq===undefined)
	    this.frequency = 0.8;
    else
	this.frequency = freq;
    this.observer = null;

    // Force carriage returns as token delimiters anyway
    Event.observe(this.element, 'keydown', this.onKeyPress.bindAsEventListener(this));
  },
  onKeyPress: function(event) {
    if(this.active)
      switch(event.keyCode) {
       case Event.KEY_TAB:
       case Event.KEY_RETURN:
         this.selectEntry();
         Event.stop(event);
       case Event.KEY_ESC:

         this.active = false;
         Event.stop(event);
         return;
       case Event.KEY_LEFT:
       case Event.KEY_RIGHT:
         return;
       case Event.KEY_UP:
         this.render();
         Event.stop(event);
         return;
       case Event.KEY_DOWN:

         this.render();
         Event.stop(event);
         return;
      }
     else
       if(event.keyCode==Event.KEY_TAB || event.keyCode==Event.KEY_RETURN ||
         (Prototype.Browser.WebKit > 0 && event.keyCode == 0)) return;

    this.changed = true;

    if(this.observer) clearTimeout(this.observer);
      this.observer =
        setTimeout(this.onObserverEvent.bind(this), this.frequency*1000);
  },

  onObserverEvent: function() {
    this.changed = false;

    if(this.element.value.length>=this.minChars) {
	if(this.oldElementValue!=this.element.value)
        this.fire(this.element,this.element.value);
    } else {
      this.active = false;

    }
    this.oldElementValue = this.element.value;
  }

});

Nutra.Auto = Class.create(Nutra.AutoBase, {
  initialize: function(element,  fire,minChars, freq) {
    this.baseInitialize(element, fire, minChars, freq);
  }

});
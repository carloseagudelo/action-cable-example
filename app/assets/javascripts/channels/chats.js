App.chats = App.cable.subscriptions.create('ChatsChannel', {  

  received: function(data) {
  	$('#chatroom_topic').val('')
    return $('#chats').append(this.renderChat(data));
  },

  renderChat: function(data) {
    return "<div class='col-sm-6 col-md-4 col-lg-3 mt-4'>" +
			  "<div class='card' style='width: 20rem;'>" +
			    "<img class='card-img-top' >" +
			    "<div class='card-body'>" +
			      "<h1>" + data.topic + "</h1>" +
			      "<p class='card-text'>LOREM IMPSM</p>" +
			      "<a class='btn btn-primary' href='/chatrooms/"+ data.id +"'>IR AL CHAT</a>"+
			    "</div>"+
			  "</div>"+
			"</div>";
  }
});
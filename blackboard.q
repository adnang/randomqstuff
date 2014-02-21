/Blackboard.q
/------------
/A very simple instant messaging client to be run on two connected 
/servers. Set the first instance to port p1, and the second to p2, then 
/connect(p1) on the the server on p2. You can then run send(msg) from 
/either instance and it will be displayed on a table (blackboard).
/
/This is written as part of the integration test for my q/kdb+ GUI, this
/program will be represented graphcially when the GUI software is 
/sufficiently completed.

blk.p:0;
blk.h:();
blk.t:([]frm:();sent:();rec:();msg:());

set_up:{[]
	};

connect:{[port]
	blk.p::port;
	blk.h::hopen `::blk.p;
	set_up[]; };
	
send:{[msg]
	in: blk.h (sent:.z.z;"recieve[",msg,"]"); 
	insert[`blk.h;(blk.p;sent;in;msg)] };
	
recieve:{[msg]
	
	};

show_table:{[]
	
	};


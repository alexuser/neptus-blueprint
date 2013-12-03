
function getStart() {
    var canvas1 = document.getElementById('canvas1');
    var math1a = canvas1.getContext('2d');

    math1a.beginPath();
    math1a.arc(50,50,40,0,2*Math.PI);
    math1a.closePath();
    math1a.lineWidth=10;
    math1a.strokeStyle="#E5E4E2";
    math1a.stroke();

    math1a.beginPath();
    math1a.arc(50,50,32.5,0,2*Math.PI);
    math1a.fillStyle="#4CC417";
    math1a.fill();
    math1a.closePath();

    math1a.font="15px Arial";
    math1a.fillStyle="#ffffff";
    math1a.fillText("Math1A",25,55);


    var canvas2 = document.getElementById('canvas2');
    var math1b = canvas2.getContext('2d');

    math1b.beginPath();
    math1b.arc(50,50,40,0,2*Math.PI);
    math1b.closePath();
    math1b.lineWidth=10;
    math1b.strokeStyle="#4CC417";
    math1b.stroke();

    math1b.beginPath();
    math1b.arc(50,50,32.5,0,2*Math.PI);
    math1b.fillStyle="#3EA055";
    math1b.fill();
    math1b.closePath();

    math1b.font="15px Arial";
    math1b.fillStyle="#ffffff";
    math1b.fillText("Math1B",25,55);

    var canvas3 = document.getElementById('canvas3');
    var math54 = canvas3.getContext('2d');

    math54.beginPath();
    math54.arc(50,50,40,0,2*Math.PI);
    math54.closePath();
    math54.lineWidth=10;
    math54.strokeStyle="#3EA055";
    math54.stroke();

    math54.beginPath();
    math54.arc(50,50,32.5,0,2*Math.PI);
    math54.fillStyle="#306754";
    math54.fill();
    math54.closePath();

    math54.font="15px Arial";
    math54.fillStyle="#ffffff";
    math54.fillText("Math54",25,55);

    var canvas4 = document.getElementById('canvas4');
    var cs61a = canvas4.getContext('2d');

    cs61a.beginPath();
    cs61a.arc(50,50,40,0,2*Math.PI);
    cs61a.closePath();
    cs61a.lineWidth=10;
    cs61a.strokeStyle="#E5E4E2";
    cs61a.stroke();

    cs61a.beginPath();
    cs61a.arc(50,50,32.5,0,2*Math.PI);
    cs61a.fillStyle="#82CAFF";
    cs61a.fill();
    cs61a.closePath();

    cs61a.font="15px Arial";
    cs61a.fillStyle="#ffffff";
    cs61a.fillText("CS61A",25,55);

    var canvas5 = document.getElementById('canvas5');
    var cs61b = canvas5.getContext('2d');

    cs61b.beginPath();
    cs61b.arc(50,50,40,0,2*Math.PI);
    cs61b.closePath();
    cs61b.lineWidth=10;
    cs61b.strokeStyle="#82CAFF";
    cs61b.stroke();

    cs61b.beginPath();
    cs61b.arc(50,50,32.5,0,2*Math.PI);
    cs61b.fillStyle="#3090C7";
    cs61b.fill();
    cs61b.closePath();

    cs61b.font="15px Arial";
    cs61b.fillStyle="#ffffff";
    cs61b.fillText("CS61B",25,55);

    var canvas6 = document.getElementById('canvas6');
    var cs61c = canvas6.getContext('2d');

    cs61c.beginPath();
    cs61c.arc(50,50,40,1.5*Math.PI,0.5*Math.PI);
    cs61c.lineWidth=10;
    cs61c.strokeStyle="#3090C7";
    cs61c.stroke();

    cs61c.beginPath();
    cs61c.arc(50,50,40,0.5*Math.PI,1.5*Math.PI);
    cs61c.lineWidth=10;
    cs61c.strokeStyle="#82CAFF"; 
    cs61c.stroke();



    cs61c.beginPath();
    cs61c.arc(50,50,32.5,0,2*Math.PI);
    cs61c.fillStyle="#2B547E";
    cs61c.fill();
    cs61c.closePath();

    cs61c.font="15px Arial";
    cs61c.fillStyle="#ffffff";
    cs61c.fillText("CS61C",25,55);
}

getStart();

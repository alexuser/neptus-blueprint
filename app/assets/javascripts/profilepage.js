
var math1a = {
    setup: function() {  
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
        //math1a.fillStyle="#4CC417";
        math1a.fillStyle="#E5E4E2";
        math1a.fill();
        math1a.closePath();

        math1a.font="15px Arial";
        math1a.fillStyle="#ffffff";
        math1a.fillText("Math1A",25,55);
    }
    

    ,up: function() {
        var canvas1 = document.getElementById('canvas1');
        var math1a = canvas1.getContext('2d');
        math1a.beginPath();
        math1a.arc(50,50,32.5,0,2*Math.PI);
        math1a.fillStyle="#ffffff";
        math1a.fill();
        math1a.fillStyle="#4CC417";
        math1a.fill();
        math1a.closePath();
        math1a.font="15px Arial";
        math1a.fillStyle="#ffffff";
        math1a.fillText("Math1A",25,55);
    }

    ,down: function() {
        var canvas1 = document.getElementById('canvas1');
        var math1a = canvas1.getContext('2d');
        math1a.beginPath();
        math1a.arc(50,50,32.5,0,2*Math.PI);
        math1a.fillStyle="#ffffff";
        math1a.fill();
        math1a.fillStyle="#E5E4E2";
        math1a.fill();
        math1a.closePath();

        math1a.font="15px Arial";
        math1a.fillStyle="#ffffff";
        math1a.fillText("Math1A",25,55);
    }
};


var math1b = {
    setup: function() {
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
    }      
};


var math54 = {
    setup: function() {
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
    }
};

var cs61a = {
    setup: function() {
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
    }
};

var cs61b = {
    setup: function() {
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
    }
};

var cs61c = {
    setup: function() {
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
};

var circularProgress = {
    setup: function() {
        var canvas = document.getElementById('circularProgress');
        var circularProgress = canvas.getContext('2d');
        circularProgress.beginPath();
        circularProgress.arc()

    }

}


//<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
  //  <path fill="none" stroke="#bfa2a2" d="M20,10 A10,10,0,0,0,20,30" stroke-width="5">
//</svg>  



$(math1a.setup);
$(math1b.setup);
$(math54.setup);
$(cs61a.setup);
$(cs61b.setup);
$(cs61c.setup);
$('#canvas1').mouseenter(math1a.up);
$('#canvas1').mouseleave(math1a.down);
var paper = Raphael("circular-progress", 200, 200);
paper.path("M0 0L200 0");
paper.path("M200 0L200 200");
paper.path("M0 200L200 200");
paper.path("M0 0L0 200");

//paper.circle(100, 100, 10).attr({'stroke-width': 15, 'stroke': '#2B547E'});


var CircularPath = function(R, x, y, w, paper, bgColor){
    this.radius = R;
    this.centerX = x;
    this.centerY = y;
    this.pathWidth = w;
    this.paper = paper;
    this.bgColor = bgColor;

    this.setup = function() {
        var r = this.radius,
            x = this.centerX,
            y = this.centerY;
        this.paper.circle(x, y, r).attr({'stroke-width': this.pathWidth, 'stroke': this.bgColor});
        
        var path = this.paper.path(Raphael.format("M{0} {1}a{2} {3} 0 1 1 {4} {5}", x, y-r,r,r,x+r,y));
        path.attr({'stroke': '#728C00', 'stroke-width': 5});
    },

    this.setColor = function(percent) {
       
    }

}

var test = new CircularPath(10, 100, 100, 5, paper, "#2B547E");
test.setup();









var path = paper.path("M100 10A90 90 0 1 1 99.99 10");
path.attr('stroke-width', 15);
path.attr('stroke', '#2B547E');

path.arc = function(percent, R) {
    var x = 100 + R * Math.cos(percent * 2 * Math.PI),
        y = 5 - R * Math.sin(percent * 2 * Math.PI);
    path = [["M", 100, 300 - R], ["A", R, R, 0, +(alpha > 180), 1, x, y]];

}


           
                // Custom Attribute
                r.customAttributes.arc = function (value, total, R) {
                    var alpha = 360 / total * value,
                        a = (90 - alpha) * Math.PI / 180,
                        x = 300 + R * Math.cos(a),
                        y = 300 - R * Math.sin(a),
                        color = "hsb(".concat(Math.round(R) / 200, ",", value / total, ", .75)"),
                        path;
                    if (total == value) {
                        path = [["M", 300, 300 - R], ["A", R, R, 0, 1, 1, 299.99, 300 - R]];
                    } else {
                        path = [["M", 300, 300 - R], ["A", R, R, 0, +(alpha > 180), 1, x, y]];
                    }
                    return {path: path, stroke: color};
                };

               
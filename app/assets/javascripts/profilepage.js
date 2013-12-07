var paper = Raphael("circular-progress", 400, 400);
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
        this.bgPath = this.paper.circle(x, y, r).attr({'stroke-width': this.pathWidth, 'stroke': this.bgColor});
    },

    this.setColor = function(percent, color) {
        var r = this.radius,
            x = this.centerX,
            y = this.centerY;
        if (percent == 1) {         
            this.path = this.paper.circle(x, y, r).attr({'stroke-width': this.pathWidth, 'stroke': color});
        } else {
            var startX = this.centerX,
                startY = this.centerY - this.radius,
                endX = this.centerX + this.radius * Math.cos((-percent*2+0.5)*Math.PI),    
                endY = this.centerY - this.radius * Math.sin((-percent*2+0.5)*Math.PI),
                alpha = (percent<=0.5)?0:1;
            this.paper.circle(x, y, r).attr({'stroke-width': this.pathWidth, 'stroke': '#ffffff'});
            this.paper.circle(x, y, r).attr({'stroke-width': this.pathWidth, 'stroke': this.bgColor});
            this.path = this.paper.path(Raphael.format("M{0} {1}A{2} {2} 0 {3} 1 {4} {5}",startX,startY,r,alpha,endX,endY));
            this.path.attr({'stroke': color, 'stroke-width': this.pathWidth});
        }
    }
}


var grey = '#D1D0CE',
    blue = '#98AFC7',
    green = '#437C17';

var totalProgress = 0;


var lowerDivision = new CircularPath(40, 120, 120, 18, paper, grey);
lowerDivision.setup();
//lowerDivision.setColor(1,'#89C35C');
var upperDesign = new CircularPath(60, 120, 120, 18, paper, grey);
upperDesign.setup();
//upperDesign.setColor(0.8,'#6CBB3C');
var fiveUpper = new CircularPath(80, 120, 120, 18, paper, grey);
fiveUpper.setup();
//fiveUpper.setColor(0.5, '#6AA121');
var totalUpper = new CircularPath(100, 120, 120, 18, paper, grey);
totalUpper.setup();
//totalUpper.setColor(0.3, '#348017'); 



lowerDivision.update = function() {
    var progress = 0,
        reqs = ['#requirements_cs_sixtyonea',
                '#requirements_cs_sixtyoneb',
                '#requirements_cs_sixtyonec',
                '#requirements_math_onea',
                '#requirements_math_oneb',
                '#requirements_math_fiftyfour',
                '#requirements_cs_seventy',
                '#requirements_ee_twenty',
                '#requirements_ee_fourty',
                '#requirements_ee_fourtytwo'];
    for (var i = 0; i < reqs.length; i++ ) {
        if ($(reqs[i]+'.tasks-list-cb').prop('checked')) {
            progress++;
            if (reqs[i] == '#requirements_ee_twenty' || reqs[i] == '#requirements_ee_fourty' ||
                reqs[i] == '#requirements_ee_fourtytwo') break;
        }
    }
    totalProgress += progress;
    this.setColor(totalProgress/8.0, '#FFD801');
}

lowerDivision.update();

upperDesign.update = function() {
    var progress = 0,
        reqs = ['#requirements_cs_conefourtynine',
                '#requirements_cs_onefifty',
                '#requirements_cs_onefiftytwo',
                '#requirements_cs_onesixty',
                '#requirements_cs_onesixtytwo',
                '#requirements_cs_onesixtyfour',
                '#requirements_cs_onesixtynine',
                '#requirements_cs_oneeightyfour',
                '#requirements_cs_oneeightysix'];
    for (var i = 0; i < reqs.length; i++) {
        if ($(reqs[i]+'.tasks-list-cb').prop('checked')) {
            progress = 1;
            totalProgress += progress;
            break;
        }
    }
    this.setColor(progress, '#9DC209');
}
upperDesign.update();

fiveUpper.update = function() {
    var progress = 0,
        reqs = ['#requirements_cs_conefourtynine',
                '#requirements_cs_onefifty',
                '#requirements_cs_onefiftytwo',
                '#requirements_cs_onesixty',
                '#requirements_cs_onesixtyone',
                '#requirements_cs_onesixtytwo',
                '#requirements_cs_onesixtyfour',
                '#requirements_cs_oneseventy',
                '#requirements_cs_onesixtynine',
                '#requirements_cs_oneeightyfour',
                '#requirements_cs_oneeightysix',
                '#requirements_cs_oneeightyeight'];
    for (var i = 0; i < reqs.length; i++) {
        if ($(reqs[i]+'.tasks-list-cb').prop('checked')) {
            progress ++;
            if (progress == 5) break;
        }
    }
    totalProgress += progress;
    this.setColor(progress/5.0, '#728FCE');
}

fiveUpper.update();

totalUpper.update = function() {
    var progress = 0;
        reqs = ['#requirements_cs_conefourtynine',
                '#requirements_cs_onefifty',
                '#requirements_cs_onefiftytwo',
                '#requirements_cs_onesixty',
                '#requirements_cs_onesixtyone',
                '#requirements_cs_onesixtytwo',
                '#requirements_cs_onesixtyfour',
                '#requirements_cs_oneseventy',
                '#requirements_cs_onesixtynine',
                '#requirements_cs_oneeightyfour',
                '#requirements_cs_oneeightysix',
                '#requirements_cs_oneeightyeight'];
    for (var i = 0; i < reqs.length; i++) {
        if ($(reqs[i]+'.tasks-list-cb').prop('checked')) {
            progress ++;
            if (progress == 7) break;
        }
    }
    totalProgress += progress;
    this.setColor(progress/7.0, '#2B547E');
}
totalUpper.update();
totalProgress = (totalProgress / 21.0 * 100).toFixed(2);
paper.text(120,120,totalProgress + "%").attr('font-size', 13);

paper.circle(10, 250, 7).attr({'fill': '#FFD801', 'stroke-width': 0});
paper.text(110, 250, 'Lower Division Requirements').attr({'font-size': 13 });

paper.circle(10, 270, 7).attr({'fill': '#9DC209', 'stroke-width': 0});
paper.text(116, 270, '1 Upper Division Desgin Course').attr({'font-size': 13 });

paper.circle(10, 290, 7).attr({'fill': '#728FCE', 'stroke-width': 0});
paper.text(140, 290, '20 Units Upper Division CS/EE Courses').attr({'font-size': 13 });

paper.circle(10, 310, 7).attr({'fill': '#2B547E', 'stroke-width': 0});
paper.text(135, 310, '27 Units Total Upper Division Courses').attr({'font-size': 13 });

/*
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



//$(math1a.setup);
//$(math1b.setup);
//$(math54.setup);
//$(cs61a.setup);
//$(cs61b.setup);
//$(cs61c.setup);
//$('#canvas1').mouseenter(math1a.up);
//$('#canvas1').mouseleave(math1a.down); */
               
        

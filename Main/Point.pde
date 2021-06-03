class Point{
    float x;
    float y;
    Segment support;

    Point(float _x, float _y){
        this.x = _x;
        this.y = _y;

        this.support = null;
    }
    Point(float _x, float _y, Segment _s){
        this.x = _x;
        this.y = _y;
        this.support = _s;
    }

    void display(){
        fill(255, 0, 0);
        noStroke();

        ellipse(x, y, 3, 3);
    }

}
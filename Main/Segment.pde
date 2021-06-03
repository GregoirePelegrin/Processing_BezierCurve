class Segment{
    Point start;
    Point end;
    ArrayList<Point> bezierPoints;
    float proportion;
    boolean toDisplay;
    boolean sign;

    Segment(Point _s, Point _e){
        this.start = _s;
        this.end = _e;

        this.bezierPoints = new ArrayList<Point>();
        this.proportion = 0;
        this.toDisplay = false;
        this.sign = true;
    }
    Segment(Point _s, Point _e, boolean _td){
        this.start = _s;
        this.end = _e;
        this.toDisplay = _td;

        this.bezierPoints = new ArrayList<Point>();
        this.proportion = 0;
        this.sign = true;
    }

    void display(){
        if(this.toDisplay){
            stroke(255, 25);
            line(this.start.x, this.start.y, this.end.x, this.end.y);
            for(Point point : this.bezierPoints) point.display();
        }
        
    }
    void update(float speed){
        if(this.sign) this.proportion += speed;
        else this.proportion -= speed;
        if(proportion >= 1) this.sign = false;
        if(proportion <= 0) this.sign = true;
        float xDiff = this.start.x - this.end.x;
        float yDiff = this.start.y - this.end.y;
        for(Point point : this.bezierPoints){
            point.x = this.start.x - this.proportion*xDiff;
            point.y = this.start.y - this.proportion*yDiff;
        }
    }
}
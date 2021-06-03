Point p1;
Point p2;
Point p3;
Point p4;
Segment c1;
Segment c2;
Segment c3;
Segment c4;

Point i1;
Point i2;
Point i3;
Point i4;
Point i5;
Point i6;
Segment s1;
Segment s2;
Segment s3;

Point result;

ArrayList<Segment> segments;
ArrayList<Point> trace;

void setup(){
    size(600, 600);
    frameRate(30);

    p1 = new Point(width/3, height/3);
    p2 = new Point(2*width/3, height/3);
    p3 = new Point(2*width/3, 2*height/3);
    p4 = new Point(width/3, 2*height/3);

    c1 = new Segment(p1, p2);
    c2 = new Segment(p2, p3);
    c3 = new Segment(p3, p4);
    c4 = new Segment(p4, p1);

    i1 = new Point(0, 0);
    i2 = new Point(0, 0);
    c1.bezierPoints.add(i1);
    c2.bezierPoints.add(i2);
    s1 = new Segment(i1, i2, true);

    i3 = new Point(0, 0);
    i4 = new Point(0, 0);
    s1.bezierPoints.add(i3);
    c3.bezierPoints.add(i4);
    s2 = new Segment(i3, i4, true);

    i5 = new Point(0, 0);
    i6 = new Point(0, 0);
    s2.bezierPoints.add(i5);
    c4.bezierPoints.add(i6);
    s3 = new Segment(i5, i6, true);

    result = new Point(0, 0);
    s3.bezierPoints.add(result);

    segments = new ArrayList<Segment>();
    segments.add(c1);
    segments.add(c2);
    segments.add(c3);
    segments.add(c4);
    segments.add(s1);
    segments.add(s2);
    segments.add(s3);

    trace = new ArrayList<Point>();
    background(0);
}

void draw(){
    // background(0);
    
    for(Segment s : segments){
        s.update(0.005);
        s.display();
    }

    // trace.add(new Point(result.x, result.y));
    // for(Point point : trace) point.display();
}
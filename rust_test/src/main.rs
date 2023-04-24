const DEFAULT_TEST_SIZE: usize = 100000000;

#[derive(Debug)]
struct Point {
    pub x: f64,
    pub y: f64,
}

fn main() {
    let mut points = Vec::with_capacity(DEFAULT_TEST_SIZE);
    for i in 0..DEFAULT_TEST_SIZE {
        points.push(Point {
            x: i as f64,
            y: i as f64,
        });
    }
    for i in 0..DEFAULT_TEST_SIZE {
        points[i].x = points[i].x + 1.0;
        points[i].y = points[i].y + 1.0;
    }
}

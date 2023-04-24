use std::env;

const DEFAULT_TEST_SIZE: usize = 100000000;

#[derive(Debug)]
struct Point {
    pub x: f64,
    pub y: f64,
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let test_size = match args.len() {
        1 => DEFAULT_TEST_SIZE,
        _ => match args[1].parse::<usize>() {
            Ok(n) => n,
            Err(_) => DEFAULT_TEST_SIZE,
        },
    };
    let mut points = vec![];
    for i in 0..test_size {
        points.push(Point {
            x: i as f64,
            y: i as f64,
        });
    }
    for i in 0..test_size {
        points[i].x = points[i].x + 1.0;
        points[i].y = points[i].y + 1.0;
    }
}

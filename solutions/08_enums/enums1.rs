<<<<<<< HEAD
fn main() {
    // DON'T EDIT THIS SOLUTION FILE!
    // It will be automatically filled after you finish the exercise.
=======
#[derive(Debug)]
enum Message {
    Resize,
    Move,
    Echo,
    ChangeColor,
    Quit,
}

fn main() {
    println!("{:?}", Message::Resize);
    println!("{:?}", Message::Move);
    println!("{:?}", Message::Echo);
    println!("{:?}", Message::ChangeColor);
    println!("{:?}", Message::Quit);
>>>>>>> master
}

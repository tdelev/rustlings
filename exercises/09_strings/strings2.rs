// TODO: Fix the compiler error in the `main` function without changing this function.
fn is_a_color_word(attempt: &str) -> bool {
    attempt == "green" || attempt == "blue" || attempt == "red"
}

fn main() {
    let word = String::from("green"); // Don't change this line.

<<<<<<< HEAD
    if is_a_color_word(word) {
=======
    if is_a_color_word(&word) {
>>>>>>> master
        println!("That is a color word I know!");
    } else {
        println!("That is not a color word I know.");
    }
}

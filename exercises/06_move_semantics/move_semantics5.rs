#![allow(clippy::ptr_arg)]

// TODO: Fix the compiler errors without changing anything except adding or
// removing references (the character `&`).

// Shouldn't take ownership
<<<<<<< HEAD
fn get_char(data: &String) -> char {
=======
fn get_char(data: String) -> char {
>>>>>>> master
    data.chars().last().unwrap()
}

// Should take ownership
<<<<<<< HEAD
fn string_uppercase(mut data: String) {
=======
fn string_uppercase(mut data: &String) {
>>>>>>> master
    data = data.to_uppercase();

    println!("{data}");
}

fn main() {
    let data = "Rust is great!".to_string();

<<<<<<< HEAD
    get_char(&data);

    string_uppercase(data);
=======
    get_char(data);

    string_uppercase(&data);
>>>>>>> master
}

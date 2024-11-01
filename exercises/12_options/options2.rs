fn main() {
    // You can optionally experiment here.
}

#[cfg(test)]
mod tests {
    #[test]
    fn simple_option() {
        let target = "rustlings";
        let optional_target = Some(target);

        // TODO: Make this an if-let statement whose value is `Some`.
<<<<<<< HEAD
        if let Some(word) = optional_target {
=======
        word = optional_target {
>>>>>>> master
            assert_eq!(word, target);
        }
    }

    #[test]
    fn layered_option() {
        let range = 10;
        let mut optional_integers: Vec<Option<i8>> = vec![None];

        for i in 1..=range {
            optional_integers.push(Some(i));
        }

        let mut cursor = range;

        // TODO: Make this a while-let statement. Remember that `Vec::pop()`
        // adds another layer of `Option`. You can do nested pattern matching
        // in if-let and while-let statements.
<<<<<<< HEAD
        while let Some(integer_opt) = optional_integers.pop() {
            if let Some(integer) = integer_opt {
                assert_eq!(integer, cursor);
                cursor -= 1;
            }
=======
        integer = optional_integers.pop() {
            assert_eq!(integer, cursor);
            cursor -= 1;
>>>>>>> master
        }

        assert_eq!(cursor, 0);
    }
}
